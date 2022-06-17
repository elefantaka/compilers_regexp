import 'package:regexp/regexp_parser.dart';
import 'package:test/test.dart';

void main() {
  test('Input 1', () {
    expect(regexpParser('aabbaa'), 'A');
  });

  test('Input 2', () {
    expect(regexpParser('bbaabb'), 'A');
  });

  test('Input 3', () {
    expect(regexpParser('ababab'), 'N');
  });

  test('Input 4', () {
    expect(regexpParser('bababa'), 'N');
  });

  test('Input 5', () {
    expect(regexpParser('aaaaaa'), 'N');
  });

  test('Input 6', () {
    expect(regexpParser('bbbbbb'), 'A');
  });

  //to test
  test('Input 7', () {
    expect(regexpParser('aabba'), 'N');
  });

  test('Input 8', () {
    expect(regexpParser('aaaaaaaaaa'), 'N');
  });

  test('Input 9', () {
    expect(regexpParser('bbbbbbbbb'), 'A');
  });

  test('Input 10', () {
    expect(regexpParser('a'), 'N');
  });
}
