import 'package:dart_tdd/kata/fizzbuzz.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('FizzBuzz', () {
    test('returns 20 values', () {
      var count = 0;
      var limit = 20;

      for (var i = 1; i <= limit; i++) {
        count += 1;
      }

      expect(count, 20);
    });
  });

  group('Contains a number', () {
    test('3', () {
      var got = has(13);
      var expected = true;

      expect(got, expected);
    });
  });

  group('Multiples', () {
    test('3', () {
      var got = multipleCheck(12);
      var expected = 'Fizz';

      expect(got, expected);
    });

    test('argument not a mutiple of 3 or 5', () {
      var got = multipleCheck(16);
      var expected = '';

      expect(got, expected);
    });

    test('mutiple of 3 and 5', () {
      var got = multipleCheck(15);
      var expected = 'FizzBuzz';

      expect(got, expected);
    });
  });
}
