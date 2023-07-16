import 'dart:async';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selot/features/presentation/Components/alarms.dart';
import 'package:selot/features/presentation/pages/notice/Notice.dart';

import '../../../../consts.dart';
import '../../widgets/alarmdata.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

void main() => runApp(const Alarm());

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  late String _timeString;
  late String _timedate;
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    _timeString = "${DateTime.now().hour}:${DateTime.now().minute}";
    // DateFormat('MM/dd/yy') as String;
    _timedate = "${DateTime.now().month}:${DateTime.now().day},${DateTime.now().year}";
    
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  void _getCurrentTime() {
    setState(() {
      _timeString = "${DateTime.now().hour}:${DateTime.now().minute} ";
      _timedate = "${DateTime.now().month},${DateTime.now().day},${DateTime.now().year}";
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////
      ///
      ///////////////////////////////////
      appBar: AppBar(
        title: const Text(
          'Alarm',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
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
          color: Color(0xfff2f2f2),
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
                      color: Color(0xffffc900),
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
                                            DateFormat.jm().format(DateTime.now()),
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
                                            DateFormat.yMMMEd().format(DateTime.now()), 
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
                                  color: Color(0xffffc900),
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
                                  Alarms(),
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
