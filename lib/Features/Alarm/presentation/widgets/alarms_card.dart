import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmCard extends StatefulWidget {
  final String time;
  final String label;
  final bool isActive;
  final bool isNext;
  final String imgs;
  // final bool isalarm;

  final bool isnotification;

  const AlarmCard({
    Key? key,
    required this.time,
    required this.label,
    required this.isActive,
    required this.isNext,
    required this.imgs,
    // required this.isalarm,
    required this.isnotification,
  }) : super(key: key);

  @override
  _AlarmCardState createState() => _AlarmCardState();
}

class _AlarmCardState extends State<AlarmCard> {
  bool isEnabled = false;

  @override
  void initState() {
    super.initState();
    isEnabled = widget.isActive;
    // isEnabled = widget.isnotification;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
      padding: const EdgeInsets.fromLTRB(8.14, 15.5, 8.14, 14.5),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: isEnabled
            ? (widget.isNext == true)
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff1f2a37),
                      Color(0xff1f2a37),
                    ],
                  )
                : LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      const Color(0xff9CA3AF),
                      const Color(0xff9CA3AF),
                    ],
                  )
            : LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  const Color.fromARGB(255, 206, 206, 206),
                  const Color.fromARGB(255, 206, 206, 206),
                ],
              ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
        border: widget.isNext
            ? Border.all(color: Color.fromARGB(255, 15, 69, 170), width: 2)
            : null,
      ),
      child: Row(
        children: [
          Image.asset(
            widget.imgs,
          ),
          const SizedBox(width: 8),
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: widget.isNext
                  ? Colors.blue[500]
                  : (isEnabled
                      ? Color.fromARGB(255, 28, 28, 28)
                      : Colors.grey[500]),
            ),
          ),
          const Spacer(),
          Text(
            widget.time,
            style: TextStyle(
                color: isEnabled
                    ? const Color.fromARGB(255, 28, 28, 28)
                    : Colors.grey[500]),
          ),
          const SizedBox(width: 8),
          CupertinoSwitch(
            value: isEnabled,
            onChanged: (value) {
              setState(() {
                isEnabled = value;
              });
              value ? print("on") : print("off");
            },
            //switch color
            activeColor: widget.isNext ? Colors.blue[500] : Colors.blue[600],
          ),
        ],
      ),
    );
  }
}
