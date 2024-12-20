import 'example.dart';

void main() {
  // Creating an instance of BankAccount
  BankAccount account = BankAccount();

  // Deposit and withdraw operations
  account.deposit(200); // Deposited: $200
  account.withdraw(50); // Withdrew: $50
  print('Current Balance: \$${account.balance}'); // Current Balance: $150

  // Trying invalid operations
  account.deposit(-100); // Invalid amount
  account.withdraw(300); // Insufficient balance
}
