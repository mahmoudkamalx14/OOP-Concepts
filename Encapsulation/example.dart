class BankAccount {
  double _balance = 0.0; // Private property

  // Public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount}');
    } else {
      print('Invalid amount. Please deposit a positive value.');
    }
  }

  // Public method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount}');
    } else {
      print('Insufficient balance or invalid amount.');
    }
  }

  // Getter to access the balance
  double get balance => _balance;

  // Setter to update the balance (if needed)
  set balance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
    } else {
      print('Balance cannot be negative!');
    }
  }
}
