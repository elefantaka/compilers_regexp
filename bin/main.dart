import 'dart:io';

import 'package:regexp/regexp_parser.dart';

void main(List<String> arguments) {
  print('Enter input string:');
  String? message = stdin.readLineSync();
  print('Input string: $message, string length: ${message?.length}');
  print('State: ${regexpParser(message!)}');
}
