void main() {
  /*
  ==>Multiple Choice
   1:a
   2:c
   3:a
   4:b
   5:d
  */
  Dog dog = Dog();
  Cat cat = Cat();

  print("Dog says:");
  dog.makeSound();

  print("Cat says:");
  cat.makeSound();
}

class Car {
  String _model;
  int _year;
  double _mileage;
  bool _isAutomatic;

  Car(this._model, this._year, this._mileage, this._isAutomatic);

  String getModel() {
    return _model;
  }

  int getYear() {
    return _year;
  }

  double getMileage() {
    return _mileage;
  }

  void updateMileage(double newMileage) {
    _mileage = newMileage;
  }
}

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}
