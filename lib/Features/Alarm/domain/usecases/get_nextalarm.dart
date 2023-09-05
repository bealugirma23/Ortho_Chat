import '../../../../constants.dart';

////////////////////////////////////////////////////////////////
String getNextAlarmTime() {
  final currentHour = DateTime.now().hour;
  final currentMinute = DateTime.now().minute;

  for (final alarm in alarmTimes) {
    final alarmHour = int.parse(alarm['time']!.split(':')[0]);
    final alarmMinute = int.parse(alarm['time']!.split(':')[1]);
    if (currentHour < alarmHour ||
        (currentHour == alarmHour && currentMinute < alarmMinute)) {
      return alarm['time']!;
    }
  }

  return alarmTimes[0]
      ['time']!; // Return first alarm time if all times have passed
}