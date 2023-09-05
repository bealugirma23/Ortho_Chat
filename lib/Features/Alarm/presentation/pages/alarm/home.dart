import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selot/Features/Alarm/presentation/pages/alarm/About.dart';
import 'package:selot/Features/Alarm/presentation/pages/alarm/Notice.dart';
import 'package:selot/Features/Alarm/presentation/pages/setitings/settins.dart';
import 'alarm_map_list.dart';

class Home_alarm extends StatefulWidget {
  const Home_alarm({super.key});

  @override
  State<Home_alarm> createState() => _Home_alarmState();
}

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _Home_alarmState extends State<Home_alarm>
    with SingleTickerProviderStateMixin {
  SampleItem? selectedMenu;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    // DateFormat('MM/dd/yy') as String;

    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  void _getCurrentTime() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111928),
      //////////////////////////////////////
      ///
      ///////////////////////////////////
      appBar: AppBar(
        title: const Text(
          'Selot',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          PopupMenuButton<SampleItem>(
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            initialValue: selectedMenu,
            // Callback that sets the selected popup menu item.
            onSelected: (SampleItem item) {
              if (item == SampleItem.itemOne) {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Setting()));
                });
              } else if (item == SampleItem.itemTwo) {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notice()));
                });
              } else {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                });
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text('Settings'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('Notice'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemThree,
                child: Text('About'),
              ),
            ],
          )
        ],
      ),
      ////////////////////////////////////////////////////////////
      /////////
      /////////////////////////////////////////////////////////
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff111928),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                  //////////////////////////////////////////////
                  ///////////////////////////////////////////////
                  Container(
                    // frame2824gk (54353:46180)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 19.93),
                    padding: EdgeInsets.fromLTRB(14, 15.93, 0, 0),
                    width: double.infinity,
                    height: 166,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff1f2a37),
                          Color(0xff1f2a37),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33),
                        topRight: Radius.circular(33),
                        bottomLeft: Radius.circular(33),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group303Ybv (54353:46721)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 13.5),
                          width: 173,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group280UkU (54353:46426)
                                margin:
                                    EdgeInsets.fromLTRB(8.67, 0, 8.83, 19.3),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        // group264DCG (54353:46428)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 3, 5.42, 0),
                                        width: 14.08,
                                        height: 13.3,
                                        child: Image.asset(
                                            width: 14.08,
                                            height: 13.3,
                                            'assets/cal.PNG')),
                                    Text(
                                      // batalemariyamuat (54353:46427)
                                      'Bata Lemariyam',
                                      style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group3023SC (54353:46720)
                                width: double.infinity,
                                height: 89.9,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // awv (54353:46424)
                                      left: 0,
                                      top: 0,
                                      child: Align(
                                        child: SizedBox(
                                          width: 180,
                                          height: 70,
                                          child: Text(
                                            DateFormat.jm()
                                                .format(DateTime.now()),
                                            style: GoogleFonts.inter(
                                              fontSize: 57,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2125,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // may132023gEG (54353:46425)
                                      left: 9.7504882812,
                                      top: 69.9025878906,
                                      child: Align(
                                        child: SizedBox(
                                          width: 110,
                                          height: 20,
                                          child: Text(
                                            DateFormat.yMMMEd()
                                                .format(DateTime.now()),
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2125,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          // frame289nHJ (54353:46182)
                          opacity: 0.24,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              // width: 190,
                              // height: 166,

                              child: Image.asset(
                                  width: 190.01,
                                  height: 150.14,
                                  'assets/chu.PNG')),
                        ),
                      ],
                    ),
                  ),
                  ////////////////////////////////////////////////////////////////
                  //////////////////////////
                  ///

                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            Container(
                              // height: 50,
                              width: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                  color: Color(0xff111928),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TabBar(
                                      unselectedLabelColor: Colors.white,
                                      labelColor: Colors.black,
                                      indicatorColor: Colors.white,
                                      indicatorWeight: 2,
                                      indicator: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      controller: tabController,
                                      tabs: [
                                        Tab(
                                          text: 'Alarm',
                                        ),
                                        Tab(
                                          text: 'Notice',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: tabController,
                                children: [
                                  AlarmApp(),
                                  // Aged(),
                                  Notice(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ////////////////////////////////
                ]))
          ],
        ),
      ),
    );
  }
}
