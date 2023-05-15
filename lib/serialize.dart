import 'package:intl/intl.dart';

int getWeekNumber(DateTime date) {
  DateTime firstDayOfYear = DateTime(date.year, 1, 1);

  int differenceInDays = date.difference(firstDayOfYear).inDays;

  int weekNumber = (differenceInDays / 7).ceil();

  return weekNumber;
}

String getDayOfWeek(DateTime date) {
  DateFormat formatter = DateFormat('EEEE');
  String dayOfWeek = formatter.format(date);
  dayOfWeek = dayOfWeek.substring(0, 2).toUpperCase();

  return dayOfWeek;
}

String getTimeDay(DateTime date) {
  DateFormat formatter = DateFormat.Hm();
  String timeOfDay = formatter.format(date);
  timeOfDay = timeOfDay.replaceAll(':', '');

  return timeOfDay;
}

String getYear(DateTime date) {
  DateFormat formatter = DateFormat.y();
  String year = formatter.format(date).substring(2, 4);
  return year;
}
