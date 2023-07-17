import 'package:flutter/material.dart';
import '../widgets/alarmdata.dart';

class Alarms extends StatefulWidget {
  const Alarms({super.key});

  @override
  State<Alarms> createState() => _AlarmsState();
}

class _AlarmsState extends State<Alarms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111928),
      body: Container(
        // frame2788ro (54242:46123)
        height: 500,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  // if selected then show alarm lists else show the notice lists
                  shrinkWrap: true,
                  children: const <Widget>[
                    Alarmwidget(
                      timename: "First Hour",
                      time: "12:00",
                      nord: "AM",
                    ),
                    Alarmwidget(
                      timename: "Third Hour",
                      time: "03:00",
                      nord: "AM",
                    ),
                    Alarmwidget(
                      timename: "Sixth Hour",
                      time: "06:00",
                      nord: "AM",
                    ),
                    Alarmwidget(
                      timename: "Ninth Hour",
                      time: "09:00",
                      nord: "AM",
                    ),
                    Alarmwidget(
                      timename: "Eleventh ",
                      time: "11:00",
                      nord: "AM",
                    ),
                    Alarmwidget(
                      timename: "Twelfth ",
                      time: "03:00",
                      nord: "PM",
                    ),
                    Alarmwidget(
                      timename: "Midnight ",
                      time: "06:00",
                      nord: "PM",
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
