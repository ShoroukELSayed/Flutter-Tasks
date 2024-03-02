import 'dart:io';

void main() {
  /*
  ==>Multiple Choice
  1:b
  2:d
  3:b
  4:d
  5:a
  */
  //--------------------------------------Laptop shop----------------------------------------------
  // Get user input for laptop features
  print('Enter laptop brand:');
  String brand = stdin.readLineSync()!;

  print('Enter laptop model:');
  String model = stdin.readLineSync()!;

  print('Enter RAM size in GB:');
  int ram = int.parse(stdin.readLineSync()!);

  // Create a Laptop object
  Laptops laptop = Laptops(brand, model, ram);

  // Calculate the price
  double price = laptop.calculatePrice();

  // Display the price to the user
  print('The price of the laptop is: \$${price.toStringAsFixed(2)}');
//-------------------------------------------Bank Account Management------------------------------------------
  // Create two bank account objects
  BankAccount account1 = BankAccount('123456', 'Shorouk ELSayed', 10000.0);
  BankAccount account2 = BankAccount('789101112', 'ELsayed Hassan', 20000.0);

  // Perform deposits and withdrawals
  account1.deposit(1000.0);
  account1.withdraw(500.0);
  account1.deposit(-200.0); // Invalid deposit

  account2.deposit(2000.0);
  account2.withdraw(1500.0);

  // Print final balances
  print('\nFinal balances after transactions:');
  print('Account 1:');
  account1.printAccountDetails();
  print('\nAccount 2:');
  account2.printAccountDetails();

//------------------------------------------Employee Organization Structure---------------------------------------

  // Create instances of Manager and Worker
  Manager manager1 = Manager('ELSayed Hassan', 123456, 'HR', 60000, 'Senior');
  Worker worker1 =
      Worker('Shorouk ELSayed', 7891011121314, 'Production', 25000, 30);

  // Display details of Manager and Worker
  print('Manager Details:');
  manager1.displayDetails();
  print('\nWorker Details:');
  worker1.displayDetails();

//-----------------------------------------Geometric Shape Abstraction---------------------------------------------

  // Create instances of Rectangle, Circle, and Triangle
  Rectangle rectangle = Rectangle(5, 3);
  Circle circle = Circle(4);
  Triangle triangle = Triangle(3, 4, 5,4,3);

  // Calculate and print area and perimeter of each shape
  print('\nTriangle:');
  print('Area: ${triangle.calculateArea()}');
  print('Perimeter: ${triangle.calculatePerimeter()}');

  print('Rectangle:');
  print('Area: ${rectangle.calculateArea()}');
  print('Perimeter: ${rectangle.calculatePerimeter()}');

  print('\nCircle:');
  print('Area: ${circle.calculateArea()}');
  print('Perimeter: ${circle.calculatePerimeter()}');

}

class Laptops {
  String brand;
  String model;
  int ram;

  Laptops(this.brand, this.model, this.ram);

  double calculatePrice() {
    double basePrice = 1000;
    double pricePerGB = 100;
    double ramPrice = ram * pricePerGB;
    double brandPrice = brand == 'HP' ? 1000.0 : 0.0;
    double modelPrice = model == 'ProBook' ? 150.0 : 0.0;
    double totalPrice = basePrice + ramPrice + brandPrice + modelPrice;

    return totalPrice;
  }
}

class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited \$${amount.toStringAsFixed(2)} successfully.');
    } else {
      print('Invalid amount for deposit.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrawn \$${amount.toStringAsFixed(2)} successfully.');
    } else {
      print('Insufficient funds or invalid amount for withdrawal.');
    }
  }

  void printAccountDetails() {
    print('Account Number: $accountNumber');
    print('Account Holder Name: $accountHolderName');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}

class Employee {
  String name;
  int empId;
  String department;
  double salary;

  Employee(this.name, this.empId, this.department, this.salary);

  void displayDetails() {
    print('Name: $name');
    print('Employee ID: $empId');
    print('Department: $department');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}

class Manager extends Employee {
  String managerLevel;

  Manager(String name, int empId, String department, double salary,
      this.managerLevel)
      : super(name, empId, department, salary);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Manager Level: $managerLevel');
  }
}

class Worker extends Employee {
  int hoursWorked;

  Worker(String name, int empId, String department, double salary,
      this.hoursWorked)
      : super(name, empId, department, salary);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Hours Worked: $hoursWorked');
  }
}

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;
  double base;
  double hight;

  Triangle(this.side1, this.side2, this.side3, this.base, this.hight);

  @override
  double calculateArea() {
    return 1 / 2 * base * hight;
  }

  @override
  double calculatePerimeter() {
    return side1 + side2 + side3;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}
