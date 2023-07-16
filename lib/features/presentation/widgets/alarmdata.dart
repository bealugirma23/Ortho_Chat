import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Alarmwidget extends StatefulWidget {
  final String timename;
  final String time;
  final String nord;

  const Alarmwidget({
    super.key,
    required this.timename,
    required this.time,
    required this.nord,
  });

  @override
  _AlarmwidgetState createState() => new _AlarmwidgetState();
}

class _AlarmwidgetState extends State<Alarmwidget> {
  bool switchValue = true;
  var current = DateFormat.jm().format(DateTime.now());
  var check = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
        // frame14EQ3 (54242:46124)
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
        padding: const EdgeInsets.fromLTRB(8.14, 15.5, 8.14, 14.5),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: switchValue == true
              ? const Color(0xffffffff)
              : const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // firsthourgG3 (54242:46126)
                widget.timename,
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.2125,
                  color: const Color(0xff363853),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  // frame277PgF (54242:46127)

                  height: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // wSs (54242:46128)
                          widget.time,
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            height: 1.2125,
                            color: const Color(0xff111113),
                          ),
                        ),
                        Container(
                          // amgvF (54242:46129)

                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          child: Text(
                            widget.nord,
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              height: 1.2125,
                              color: const Color(0xff363853),
                            ),
                          ),
                        ),
                      ])),
              const SizedBox(
                width: 20,
              ),
              Container(
                // path183bXR (54242:46130)
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 1.16),
                width: 29.72,
                height: 25.84,
                child: CupertinoSwitch(
                  // This bool value toggles the switch.
                  value: switchValue,
                  activeColor: Color(0xFFFFC900),
                  onChanged: (bool? value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      switchValue = value ?? false;
                    });
                  },
                ),
              ),
              //  CupertinoSwitch(
              //   activeColor: const Color.fromARGB(255, 247, 0, 144),
              //   onChanged: (bool value) {},
              //   value: false,
              // )
            ]));
  }

  Color timeBasedColor() {
    TimeOfDay now = TimeOfDay.now();
    int currentHour = now.hour;

    if (currentHour < 6) {
      return Colors.yellow;
    } else {
      return Colors.blue;
    }
  }

  Color timeedColor() {
    if (switchValue == true) {
      return const Color(0xffffffff);
    } else {
      return const Color(0xffF2F2F2);
    }
  }
}
