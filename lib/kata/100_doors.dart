enum DoorState { open, closed }

class Door {
  var state = DoorState.closed;
  var id;

  Door(this.id);

  void toggle() {
    if (state == DoorState.closed) {
      state = DoorState.open;
    } else {
      state = DoorState.closed;
    }
  }
}

void passing(List<Door> doors) {
  for (var i = 0; i < doors.length; i++) {
    for (var j = i; j < doors.length; j = j + i + 1) {
      doors[j].toggle();
    }
  }
}

String printDoorState(List<Door> doors) {
  var output = '';
  for (var i = 0; i < doors.length; i++) {
    if (doors[i].state == DoorState.closed) {
      output = output + '#';
    } else {
      output = output + '@';
    }
  }
  return output;
}

void main() {
  var doors = List<Door>.generate(100, (i) => Door(i));
  passing(doors);
  print(printDoorState(doors));
}
