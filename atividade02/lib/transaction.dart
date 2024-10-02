class Transaction<T> {
  T transactionId;
  String description;
  double amount;

  Transaction({required this.transactionId, required this.description, required this.amount});
}
