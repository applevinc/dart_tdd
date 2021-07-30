import 'package:dart_tdd/kata/100_doors.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('door is closed on initialization', () {
    var door = Door(1);

    expect(door.state, DoorState.closed);
  });

  test('Toggle door state', () {
    var door = Door(1);
    door.state = DoorState.closed;
    door.toggle();
    expect(door.state, DoorState.open);

    door.state = DoorState.open;
    door.toggle();
    expect(door.state, DoorState.closed);
  });

  group('door passing(inner)', () {
    test('pass a 100 times', () {
      var count = 0;

      for (var i = 0; i < 100; i++) {
        count = count + 1;
      }

      expect(count, 100);
    });

    test('toggle door index state', () {
      var doors = List<Door>.generate(20, (i) => Door(i));

      for (var i = 0; i < doors.length; i++) {
        doors[i].toggle();
      }

      expect(doors[0].state, DoorState.open);
      expect(doors[1].state, DoorState.open);
      expect(doors[2].state, DoorState.open);
    });

    //On each pass you visit the Nth door.
    //That is on the first pass you visit every door.
    //On the second pass you visit every 2nd door.
    //On the third pass you visit every 3rd door and
    //so on until you complete the 100th pass.
    group('visit the nth door on each pass', () {
      // visit every door
      test('visit the 1st doors', () {
        var doors = List<Door>.generate(20, (i) => Door(i));

        for (var i = 0 + 0; i < doors.length; i = i + 1) {
          doors[i].toggle();
        }

        expect(doors[0].state, DoorState.open);
        expect(doors[1].state, DoorState.open);
        expect(doors[2].state, DoorState.open);
      });

      test('visit the 2nd doors', () {
        var doors = List<Door>.generate(20, (i) => Door(i));

        for (var i = 0 + 1; i < doors.length; i = i + 2) {
          doors[i].toggle();
        }

        expect(doors[0].state, DoorState.closed);
        expect(doors[1].state, DoorState.open);
        expect(doors[2].state, DoorState.closed);
      });

      test('visit the 3rd doors', () {
        var doors = List<Door>.generate(20, (i) => Door(i));

        for (var i = 0 + 2; i < doors.length; i = i + 3) {
          doors[i].toggle();
        }

        expect(doors[0].state, DoorState.closed);
        expect(doors[1].state, DoorState.closed);
        expect(doors[2].state, DoorState.open);
      });
    });
  });

  test('Outer passing', () {
    var doors = List<Door>.generate(3, (i) => Door(i));

    passing(doors);

    expect(doors[0].state, DoorState.open);
    expect(doors[1].state, DoorState.closed);
    expect(doors[2].state, DoorState.closed);
  });

  test('print door state', () {
    var doors = List<Door>.generate(3, (i) => Door(i));
    doors[0].state = DoorState.closed;
    doors[1].state = DoorState.open;
    doors[2].state = DoorState.open;

    var output = '';
    for (var i = 0; i < doors.length; i++) {
      if (doors[i].state == DoorState.closed) {
        output = output + '#';
      } else {
        output = output + '@';
      }
    }

    expect(output, '#@@');
  });
}
