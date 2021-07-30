String multipleCheck(int n) {
  if (n % 3 == 0 && n % 5 == 0) {
    return 'FizzBuzz';
  } else if (n % 3 == 0 || has(n)) {
    return 'Fizz';
  } else if (n % 5 == 0 || has(n)) {
    return 'Buzz';
  }
  return '';
}

bool has(int n) {
  var s = n.toString();
  if (s.contains('3')) {
    return true;
  } else if (s.contains('5')) {
    return true;
  }
  return false;
}

void fizzBuzz(int limit) {
  for (var i = 1; i <= limit; i++) {
    if (multipleCheck(i) == '') {
      print(i);
    } else {
      print(multipleCheck(i));
    }
  }
}
