import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selot/Features/Alarm/presentation/widgets/container.dart';
import 'package:selot/config/theme/theme.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolo,
        body: Column(children: <Widget>[
          Expanded(
              child: SizedBox(
                  // Constrain height.
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                Text(
                  'Alarm Settings',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: lightdark,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                    width: 324,
                    height: 84,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: SizedBox(
                      height: 10,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Themes',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: lightdark,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                ' it to make a type specimen book. It has survived',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 132, 132, 132),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              trailing: CupertinoSwitch(
                                value: isEnabled,
                                onChanged: (value) {
                                  setState(() {
                                    isEnabled = value;
                                  });
                                  value ? print("on") : print("off");
                                },
                                //switch color
                                activeColor: isEnabled
                                    ? Colors.blue[500]
                                    : Colors.blue[600],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Container(),
                                  ),
                                );
                              },
                            ),
                            ListTile(
                              title: Text(
                                'Themes',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                ' it to make a type specimen book. It has survived',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 132, 132, 132),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              trailing: CupertinoSwitch(
                                value: isEnabled,
                                onChanged: (value) {
                                  setState(() {
                                    isEnabled = value;
                                  });
                                  value ? print("on") : print("off");
                                },
                                //switch color
                                activeColor: isEnabled
                                    ? Colors.blue[500]
                                    : Colors.blue[600],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Container(),
                                  ),
                                );
                              },
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                    width: 324,
                    height: 84,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: SizedBox(
                      height: 10,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Themes',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: lightdark,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                ' it to make a type specimen book. It has survived',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 132, 132, 132),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              trailing: CupertinoSwitch(
                                value: isEnabled,
                                onChanged: (value) {
                                  setState(() {
                                    isEnabled = value;
                                  });
                                  value ? print("on") : print("off");
                                },
                                //switch color
                                activeColor: isEnabled
                                    ? Colors.blue[500]
                                    : Colors.blue[600],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Container(),
                                  ),
                                );
                              },
                            ),
                            ListTile(
                              title: Text(
                                'Choice Music',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                ' it to make a type specimen book. It has survived',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 132, 132, 132),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              trailing: CupertinoSwitch(
                                value: isEnabled,
                                onChanged: (value) {
                                  setState(() {
                                    isEnabled = value;
                                  });
                                  value ? print("on") : print("off");
                                },
                                //switch color
                                activeColor: isEnabled
                                    ? Colors.blue[500]
                                    : Colors.blue[600],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Container(),
                                  ),
                                );
                              },
                            ),
                          ]),
                    ),
                  ),
                ),
              ])
                  //////////////////////////////
                  ///

                  /////////////////////
                  /////////////////////////
                  ))
        ]),
        /////////////////////
      ),
    );
  }
}
