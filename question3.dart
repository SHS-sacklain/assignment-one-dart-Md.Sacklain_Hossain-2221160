class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
    : balance = 0.0;
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print(
        'Deposited $amount to account $accountNumber. New balance: $balance',
      );
    } else {
      print('Invalid deposit amount');
    }
  }
  void withdraw(double amount) {
    if (amount > balance) {
      print(
        'Insufficient funds for withdrawal of $amount from account $accountNumber',
      );
    } else if (amount > 0) {
      balance -= amount;
      print(
        'Withdrawn $amount from account $accountNumber. New balance: $balance',
      );
    } else {
      print('Invalid withdrawal amount');
    }
  }
  double getBalance() {
    return balance;
  }
  void displayAccountInfo() {
    print(
      'Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance',
    );
  }
}

void main() {
  BankAccount account1 = BankAccount('12345', 'Alice', 'Savings');
  BankAccount account2 = BankAccount('67890', 'Bob', 'Checking');
  BankAccount account3 = BankAccount('11111', 'Charlie', 'Savings');
  print('--- Deposits ---');
  account1.deposit(1500.0);
  account2.deposit(800.0);
  account3.deposit(2000.0);
  print('');
  print('--- Account Information ---');
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
  print('');

  print('--- Withdrawals ---');
  account1.withdraw(500.0);
  account3.withdraw(300.0);
  print('');

  print('--- Insufficient Funds Test ---');
  account2.withdraw(1000.0);
  print('');

  print('--- Final Balances ---');
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
}
