import 'account.dart';

class AccountNotFoundException implements Exception {
  final String message;
  AccountNotFoundException(this.message);
}

class Bank<T> {
  List<Account<T>> accounts = [];

  void addAccount(Account<T> account) {
    accounts.add(account);
  }

  Account<T> findAccount(T accountId) {
    return accounts.firstWhere(
          (acc) => acc.accountId == accountId,
      orElse: () => throw AccountNotFoundException('Account not found'),
    );
  }

  void deposit(T accountId, double amount) {
    var account = findAccount(accountId);
    account.deposit(amount);
  }

  bool withdraw(T accountId, double amount) {
    var account = findAccount(accountId);
    return account.withdraw(amount);
  }
}

