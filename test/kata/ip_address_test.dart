import 'package:dart_tdd/kata/ip_address.dart';
import 'package:test/test.dart';

void main() {
  group('IP Address', () {
    group('.endsWithZero', () {
      test('should return false when address deosn\'t end in zero', () {
        // arrange
        var addr = '1.1.1.1';
        var tIpAddr = IpAddr();

        // assert
        expect(false, tIpAddr.endsWithZero(addr));
      });

      test('should return true when address end in zero', () {
        // arrange
        var addr = '1.1.1.0';
        var tIpAddr = IpAddr();

        // assert
        expect(true, tIpAddr.endsWithZero(addr));
      });
    });

    group('.containsThreeDots', () {
      test('should return true when dots is equals to 3', () {
        // assert
        var addr = '1.1.1.1';
        var tIpAddr = IpAddr();

        // assert
        expect(true, tIpAddr.containsThreeDots(addr));
      });

      test('should return false when dots is not 3', () {
        // assert
        var addr = '10.0.1';
        var tIpAddr = IpAddr();

        // assert
        expect(false, tIpAddr.containsThreeDots(addr));
      });
    });

    group('.endsWith255', () {
      test('should return true when address end with 255', () {
        // arrange
        var addr = '255.255.255.255';
        var tIpAddr = IpAddr();

        // assert
        expect(true, tIpAddr.endsWith255(addr));
      });

      test('should return false when address do not end with 255', () {
        // arrange
        var addr = '1.1.1.1';
        var tIpAddr = IpAddr();

        // assert
        expect(false, tIpAddr.endsWith255(addr));
      });
    });

    test('should return true for a valid address', () {
      // arrange
      var addr = '1.1.1.1';
      var tIpAddr = IpAddr();

      // assert
      expect(true, tIpAddr.validate(addr));
    });
  });
}
