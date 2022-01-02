class IpAddr {
  bool validate(String address) {
    if (!containsThreeDots(address)) {
      return false;
    } else if (endsWithZero(address)) {
      return false;
    } else if (endsWith255(address)) {
      return false;
    }

    return true;
  }

  bool endsWithZero(String address) {
    var result = address.split('');
    var lastElementIndex = result.length - 1;

    if (result[lastElementIndex] != '0') {
      return false;
    }

    return true;
  }

  bool endsWith255(String address) {
    var result = address.split('.');
    var lastElementIndex = result.length - 1;

    if (result[lastElementIndex] != '255') {
      return false;
    }

    return true;
  }

  bool containsThreeDots(String address) {
    var dotCount = 0;
    var result = address.split('');

    for (var i = 0; i < result.length; i++) {
      if (result[i] == '.') {
        dotCount++;
      }
    }

    if (dotCount != 3) {
      return false;
    }

    return true;
  }
}
