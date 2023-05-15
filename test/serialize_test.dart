import 'package:test/test.dart';
import 'package:serialize/serial/serialize.dart';


void main() {
  group('MyTests', () {
    test('testGetWeekNumber', () {
      DateTime date = DateTime(2023, 5, 15);
      int weekNumber = getWeekNumber(date);
      expect(weekNumber, 19);
    });

    test('testGetDayOfWeek', () {
      DateTime date = DateTime(2023, 5, 15);
      String dayOfWeek = getDayOfWeek(date);
      expect(dayOfWeek, 'MO');
    });

    test('testGetTimeOfDay', () {
      DateTime date = DateTime(2023, 5, 15, 13, 45);
      String timeOfDay = getTimeDay(date);
      expect(timeOfDay, '1345');
    });

    test('testGetYear', () {
      DateTime date = DateTime(2023, 5, 15);
      String year = getYear(date);
      expect(year, '23');
    });
  });
}