import 'package:hundred_days_of_dart_ps/day_4.dart';
import 'package:test/test.dart';

void main() {
  group('removePunctuation tests', () {
    test('test removePunctuation 1', () {
      String sentence = "Wow!!! this is soooooo amazing!!!!";
      String expected = "Wow this is soooooo amazing";
      String result = removePunctuation(sentence);
      expect(result, expected);
    });

    test('test removePunctuation 2', () {
      String sentence = "Wow!!! this is soooooo amazing!!!!";
      String expected = "Wow this is soooooo amazing";
      String result = removePunctuationDuo(sentence);
      expect(result, expected);
    });
  });
}
