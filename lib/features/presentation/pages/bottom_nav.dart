import 'package:flutter/material.dart';
import 'package:selot/features/presentation/pages/notice/Notice.dart';
import 'package:selot/features/presentation/pages/alarm/alarm.dart';
import 'package:selot/features/presentation/pages/calander/calander.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.alarm),
            icon: Icon(Icons.alarm),
            label: 'Alarm',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.book),
            icon: Icon(Icons.book_outlined),
            label: 'Notice',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendar',
          ),
        ],
      ),
      body: <Widget>[
        const Center(
          child: Alarm(),
        ),
        const Center(
          child: Notice(),
        ),
        const Center(
          child: Calander(),
        ),
      ][currentPageIndex],
    );
  }
}
