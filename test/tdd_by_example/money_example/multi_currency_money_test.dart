import 'package:dart_tdd/tdd_by_example/money_example/multi_currency_money.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Multiplication', () {
    var five = Dollar(5);
    var product = five.times(2);
    expect(product.amount, 10);
    product = five.times(3);
    expect(product.amount, 15);
  });

  test('Equality', () {
    expect(Dollar(5).equals(Dollar(5)), true);
    expect(Dollar(5).equals(Dollar(6)), false);
  });
}
