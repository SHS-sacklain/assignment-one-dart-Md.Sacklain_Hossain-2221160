import 'package:test/test.dart';
import '../question3.dart';

void main() {
  group('Question 3 Tests - BankAccount System', () {
    test('BankAccount should initialize with zero balance', () {
      BankAccount account = BankAccount('12345', 'Alice', 'Savings');
      expect(account.balance, equals(0.0));
    });

    test('Deposit should increase balance', () {
      BankAccount account = BankAccount('12345', 'Alice', 'Savings');
      account.deposit(1000.0);
      expect(account.getBalance(), equals(1000.0));
    });

    test('Withdraw should decrease balance', () {
      BankAccount account = BankAccount('12345', 'Alice', 'Savings');
      account.deposit(1000.0);
      account.withdraw(500.0);
      expect(account.getBalance(), equals(500.0));
    });

    test('Withdraw should not work with insufficient funds', () {
      BankAccount account = BankAccount('12345', 'Alice', 'Savings');
      account.deposit(500.0);
      account.withdraw(1000.0);
      expect(account.getBalance(), equals(500.0)); // Balance unchanged
    });

    test('BankAccount should have correct properties', () {
      BankAccount account = BankAccount('12345', 'Alice', 'Savings');
      expect(account.accountNumber, equals('12345'));
      expect(account.accountHolder, equals('Alice'));
      expect(account.accountType, equals('Savings'));
    });

    test('Multiple deposits should accumulate', () {
      BankAccount account = BankAccount('12345', 'Alice', 'Savings');
      account.deposit(500.0);
      account.deposit(300.0);
      account.deposit(200.0);
      expect(account.getBalance(), equals(1000.0));
    });
  });
}