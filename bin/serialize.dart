import 'package:serialize/serial/serialize.dart';
import 'package:args/args.dart';
import 'package:process_run/shell.dart';

void main(List<String> arguments) async {
  var parser = ArgParser();
  parser.addOption('type', abbr: 't', defaultsTo: 'w');
  var res = parser.parse(arguments);

  DateTime now = DateTime.now();
  int weekNum = getWeekNumber(now);
  String dayOfWeek = getDayOfWeek(now);
  String timeOfDay = getTimeDay(now);
  String year = getYear(now);
  var type = res['type'];
  type = type.toString().toUpperCase();
  print("$dayOfWeek$weekNum$year-$timeOfDay$type");

  var shell = Shell();
  await shell.run('echo replace me');
}
