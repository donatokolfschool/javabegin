class Rectangle {
  float x, y, width, height;
  
  Rectangle(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }
  
  void draw() {
    rect(x, y, width, height);
  }
}

class BankAccount {
  String accountNumber;
  float balance;
  String owner;
  
  BankAccount(String accountNumber, float balance, String owner) {
    this.accountNumber = accountNumber;
    this.balance = balance;
    this.owner = owner;
  }
  
  void deposit(float amount) {
    if (amount > 0) {
      balance += amount;
    }
  }
  
  void withdraw(float amount) {
    if (amount > 0 && balance >= amount) {
      balance -= amount;
    }
  }
  
  float getBalance() {
    return balance;
  }
}

class Person {
  String name;
  int age;
  String gender;
  
  Person(String name, int age, String gender) {
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
}

Rectangle myRectangle;
BankAccount account;
Person person;

void setup() {
  size(400, 400);
  
  myRectangle = new Rectangle(100, 100, 200, 150);
  account = new BankAccount("12345", 1000, "Bob");
  account.deposit(500);
  account.withdraw(200);
  person = new Person("Donato", 67, "Male");
  
  println(person.name + " has a balance of: " + account.getBalance());
}

void draw() {
  background(220);
  myRectangle.draw();
}
