import 'package:flutter/material.dart';
import 'package:selot/Features/Alarm/presentation/widgets/container.dart';


class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  State<Notice> createState() => _NoticeState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111928),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              // Constrain height.
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const <Widget>[
                    ///////////////////////////////////////////////////////////

                    ContainerWidget(
                      text: "why we pray ?",
                      subtext:
                          "Prayer is communication with God. We do this by praising Him, confessing our sin before Him, thanking Him and asking Him for our needs and desires. Prayer is communion with our Creator. When we pray, we engage in loving fellowship with the Maker of heaven and earth",
                    ),

                    //////////////////////////////
                    ///
                    SizedBox(
                      height: 10,
                    ),
                    ContainerWidget(
                      text: "why we Fast ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //////////////////////////////
                    ContainerWidget(
                      text: "What are the 7 Orthodox prayers ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //////////////////////////////
                    ContainerWidget(
                      text: "What are the main types of Orthodox? ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /////////////////////
                    ContainerWidget(
                      text: "Why are they called Orthodox ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /////////////////////////
                    ContainerWidget(
                      text: "How old is Orthodox Christianity ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    /////////////////////
                    ContainerWidget(
                      text: "Why are they called Orthodox ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //////////////////////////////
                    ContainerWidget(
                      text: "What are the 7 Orthodox prayers ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //////////////////////////////
                    ContainerWidget(
                      text: "What are the main types of Orthodox? ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /////////////////////
                    ContainerWidget(
                      text: "Why are they called Orthodox ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /////////////////////////
                    ContainerWidget(
                      text: "How old is Orthodox Christianity ?",
                      subtext: "sfslfslf skfsfl skfjl",
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    /////////////////////
                    /////////////////////////
                  ]),
              /////////////////////
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
//           color: Colors.red,
//           alignment: Alignment.center,
//           child: const Text('Page 1'),

//
