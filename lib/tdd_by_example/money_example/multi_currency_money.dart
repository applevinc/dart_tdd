class Dollar {
  var amount;

  Dollar(this.amount);

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }

  bool equals(Dollar dollar) {
    return amount == dollar.amount;
  }
}
