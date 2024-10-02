import 'package:atividade02/account.dart';
import 'package:atividade02/bank.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Bank Application Tests', () {
    late Bank<String> bank; // Usando String como tipo genérico

    setUp(() {
      bank = Bank<String>();
    });

    test('Add and find account', () {
      var account = Account(accountId: '123', holderName: 'John Doe', balance: 100.0);
      bank.addAccount(account);

      var foundAccount = bank.findAccount('123');
      expect(foundAccount, isNotNull);
      expect(foundAccount!.holderName, equals('John Doe'));
    });

    test('Deposit into account', () {
      var account = Account(accountId: '123', holderName: 'John Doe', balance: 100.0);
      bank.addAccount(account);

      bank.deposit('123', 50.0);
      expect(account.balance, equals(150.0));
    });

    test('Withdraw from account', () {
      var account = Account(accountId: '123', holderName: 'John Doe', balance: 100.0);
      bank.addAccount(account);

      var result = bank.withdraw('123', 50.0);
      expect(result, isTrue);
      expect(account.balance, equals(50.0));
    });

    test('Failed withdrawal due to insufficient funds', () {
      var account = Account(accountId: '123', holderName: 'John Doe', balance: 100.0);
      bank.addAccount(account);

      var result = bank.withdraw('123', 200.0);
      expect(result, isFalse);
      expect(account.balance, equals(100.0));
    });
  });
}
