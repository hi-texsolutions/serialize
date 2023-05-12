import 'package:serialize/serialize.dart';
import 'package:args/args.dart';
import 'package:process_run/shell.dart';

void main(List<String> arguments) async {
  var parser = ArgParser();
  parser.addOption('type', abbr: 't', defaultsTo: 'w');
  var res = parser.parse(arguments);

  DateTime now = DateTime.now();
  int weekNum = getWeekNumber(now);
  String dayOfWeek = getDayofWeek(now);
  String timeOfDay = getTimeDay(now);
  String year = getYear(now);
  var type = res['type'];
  type = type.toString().toUpperCase();
  print("$dayOfWeek$timeOfDay$weekNum$year$type");

  var shell = Shell();
  await shell.run('echo replace me');
}
