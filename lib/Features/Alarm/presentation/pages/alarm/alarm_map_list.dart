import 'dart:async';
import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:selot/Features/Alarm/domain/repository/alarm_package.dart';
import 'package:selot/Features/Alarm/presentation/pages/alarm/rings.dart';
import '../../../../../../constants.dart';
import '../../../domain/usecases/get_nextalarm.dart';
import '../../widgets/alarms_card.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class AlarmApp extends StatefulWidget {
  final AlarmSettings? alarmSettings;
  const AlarmApp({Key? key, this.alarmSettings}) : super(key: key);

  @override
  _AlarmAppState createState() => _AlarmAppState();
}

class _AlarmAppState extends State<AlarmApp> {
  String currentTime = DateTime.now().toLocal().toString().substring(11, 19);
  bool loading = false;

  late bool creating;

  late bool loopAudio = true;
  late bool vibrate = true;
  late bool showNotification = true;
  late String assetAudio = 'assets/marimba.mp3';
  static StreamSubscription? subscription;
  late List<AlarmSettings> alarms;

  Future<bool> savea() async {
    final notification = await getAlarms(context);
    return notification;
  }

  Future<bool> backalarm() async {
    final notification = await getAlarmsBG(context);
    return notification;
  }

  @override
  void initState() {
    super.initState();
    loadAlarms();
    subscription ??= Alarm.ringStream.stream.listen(
      (alarmSettings) => navigateToRingScreen(alarmSettings),
    );
  }

  void loadAlarms() {
    if (mounted) {
      setState(() {
        alarms = Alarm.getAlarms();
        alarms.sort((a, b) => a.dateTime.isBefore(b.dateTime) ? 0 : 1);
      });
    }
  }

  Future<void> navigateToRingScreen(AlarmSettings alarmSettings) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Ringds(alarmSettings: alarmSettings),
        ));
    loadAlarms();
  }

  // void deleteAlarm() {
  //   Alarm.stop(widget.alarmSettings!.id).then((res) {
  //     if (res) Navigator.pop(context, true);
  //   });
  // }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111928),
      body: Container(
        // frame2788ro (54242:46123)
        height: 500,
        child: Column(children: <Widget>[
          Flexible(
            child: ListView(
                scrollDirection: Axis.vertical,
                // if selected then show alarm lists else show the notice lists
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  ...alarmTimes.map(
                    (alarm) => AlarmCard(
                      imgs: alarm['imgs']!,
                      time: alarm['rtime']!,
                      label: alarm['label']!,
                      isActive: currentTime.compareTo(alarm['time']!) < 0,
                      isNext: getNextAlarmTime() == alarm['time'],
                      // isalarm: scheduleAlarms() == alarm['time'],
                      // Compare the result with the current alarm time
                      isnotification: savea() == alarm['time'],
                    ),
                  ),
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => NewPage()),
                  // );
                ]),
          ),
        ]),
      ),
    );
  }
}
