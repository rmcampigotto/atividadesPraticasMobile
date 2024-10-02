class Account<T> {
  T accountId;
  String holderName;
  double balance;

  Account({required this.accountId, required this.holderName, this.balance = 0.0});

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      return true;
    }
    return false;
  }
}
