import 'dart:async';
import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import '../../../../constants.dart';
import '../../../Features/Alarm/presentation/pages/alarm/rings.dart';

late bool creating;
late TimeOfDay selectedTime;
late bool loopAudio = true;
late bool vibrate = true;
late bool showNotification = true;
late String assetAudio = 'assets/marimba.mp3';
AlarmSettings buildAlarmSettings() {
  final now = DateTime.now();
  final id = 43;

  for (final alarm in alarmTimes) {
    final alarmHour = int.parse(alarm['time']!.split(':')[0]);
    final alarmMinute = int.parse(alarm['time']!.split(':')[1]);
    selectedTime = TimeOfDay(
      hour: alarmHour,
      minute: alarmMinute,
    );
    // selectedTimes.add(TimeOfDay(
    //   hour: alarmHour,
    //   minute: alarmMinute,
    // ));
  }
  DateTime dateTime = DateTime(
    now.year,
    now.month,
    now.day,
    selectedTime.hour,
    selectedTime.minute,
    0,
    0,
  );

  final alarmSettings = AlarmSettings(
    id: id,
    dateTime: dateTime,
    loopAudio: loopAudio,
    vibrate: vibrate,
    notificationTitle: showNotification ? 'Alarm example' : null,
    notificationBody: showNotification ? 'Your alarm ($id) is ringing' : null,
    assetAudioPath: assetAudio,
    stopOnNotificationOpen: false,
  );
  return alarmSettings;
}

bool hasRun = false;

Future getAlarms(BuildContext context) async {
  if (hasRun) {
    return false;
  }

  final currentHour = DateTime.now().hour;
  final currentMinute = DateTime.now().minute;

  for (final alarm in alarmTimes) {
    final alarmHour = int.parse(alarm['time']!.split(':')[0]);
    final alarmMinute = int.parse(alarm['time']!.split(':')[1]);
    if (currentHour == alarmHour && currentMinute == alarmMinute) {
      Alarm.set(alarmSettings: buildAlarmSettings()).then((res) {
        if (res)
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    Ringds(alarmSettings: buildAlarmSettings()),
              ));
        ;
      });
      // Set the function status to true
      hasRun = true;
      // Return true when an alarm is triggered
      return true;
    }
    // Return false when no alarm is triggered
  }
  return false;
  // await Alarm.set(settings: alarmSettings);
}

/////////////////////////////////////////////////////
///
/////////////////////////////////////////////////////
// AndroidAlarmManager buildSet(){
//   final now = DateTime.now();
//   final id = 43;

//   for (final alarm in alarmTimes) {
//     final alarmHour = int.parse(alarm['time']!.split(':')[0]);
//     final alarmMinute = int.parse(alarm['time']!.split(':')[1]);
//     selectedTime = TimeOfDay(
//       hour: alarmHour,
//       minute: alarmMinute,
//     );
//     // selectedTimes.add(TimeOfDay(
//     //   hour: alarmHour,
//     //   minute: alarmMinute,
//     // ));
//   }
//   DateTime dateTime = DateTime(
//     now.year,
//     now.month,
//     now.day,
//     selectedTime.hour,
//     selectedTime.minute,
//     0,
//     0,
//   );

//   final alrsetting =  AndroidAlarmManager.oneShot(
//       const Duration(days: 1),
//       dateTime as int,
//       alarmCallback,
//       exact: true,
//       wakeup: true,
//     );

// }
bool hasRunn = false;

Future getAlarmsBG(BuildContext context) async {
  if (hasRunn) {
    return false;
  }
  for (final alarm in alarmTimes) {
    final alarmHour = int.parse(alarm['time']!.split(':')[0]);
    final alarmMinute = int.parse(alarm['time']!.split(':')[1]);
    final now = DateTime.now();
    final alarmTime =
        DateTime(now.year, now.month, now.day, alarmHour, alarmMinute);

    await AndroidAlarmManager.oneShot(
      const Duration(days: 1),
      alarmTime as int,
      alarmCallback,
      exact: true,
      wakeup: true,
    );
    // Set the function status to true
    hasRunn = true;
    // Return true when an alarm is triggered
    return true;
  }

  return false;
  // await Alarm.set(settings: alarmSettings);
}

void alarmCallback(BuildContext context) {
  // Perform the desired action when the alarm fires
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Ringds(alarmSettings: buildAlarmSettings()),
      ));
  print('heeellloe');
}

//alarm details

