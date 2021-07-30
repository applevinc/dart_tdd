enum DoorState { open, closed, holding }

class Door {
  var state = DoorState.closed;
  var id;

  Door(this.id);

  void toggle() {
    switch (state) {
      case DoorState.closed:
        state = DoorState.open;
        break;
      case DoorState.open:
        state = DoorState.holding;
        break;
      case DoorState.holding:
        state = DoorState.closed;
        break;
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
    switch (doors[i].state) {
      case DoorState.open:
        output = output + '@';
        break;
      case DoorState.closed:
        output = output + '#';
        break;
      case DoorState.holding:
        output = output + 'H';
        break;
    }
  }
  return output;
}

void main() {
  var doors = List<Door>.generate(100, (i) => Door(i));
  passing(doors);
  print(printDoorState(doors));
}
