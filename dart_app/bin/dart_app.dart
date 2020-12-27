void main(List<String> args) {
  Organism human = Human();
  human.species = 'Human';
  human.habitat = 'land';
  human.modeOfFeeding = 'Ominivore';
  human.newFunc('Humna');

  // polymorphism
  var animal = Animal();
  animal.habitat = 'Forest';
  animal.modeOfFeeding = 'Canivore or Herbivore';
  animal.species = 'Canines';
  animal.newFunc('Dog');
  animal.displayFeature('claw');

  // abstracts
  var blockA = House();
  blockA.displayRoomPrice(122);
  blockA.displayRoomSize(10000);

  // interfaces

  var rentA = Rent();
  rentA.amountToPay(10000);
  rentA.displayPendingRoomTax(1000000);
}

// Defined Class types
class Phone {
  // property or class member
  int releasedYear;
  String model;
  int androidVersion;

  // constructor
  // from ClassName
  Phone(this.releasedYear, this.model, this.androidVersion);

  // from className.identifier
  Phone.fromSpecs({this.releasedYear, this.model, this.androidVersion});
}

/// Inheritence

class Organism {
  String species;
  String habitat;
  String modeOfFeeding;

  // Class nanmed  constructor
  Organism() {
    print('Organism Has started life');
  }

  // named constructor
  Organism.displayHabitat() {
    print('Organism print habitat named constructor');
  }

  // class method
  void _displaySpecieType() {
    // private method
    print('I am a $species ');
  }

  void newFunc(var func) {
    print(func);
    _displaySpecieType();
  }
}

// Extending Organism Class

class Human extends Organism {
  // inherriting parernt class default constructor
  Human() : super() {
    print('This is a human class constructor');
  }

  // inheriiting parent named constructor
  Human.displayHabitat() : super.displayHabitat() {
    print('This is a human named constructor');
  }

  @override
  void newFunc(var func) {
    print('hello $func');
  }
}

// Polymerphism and Mixin

class Animal extends Organism with Feature {
  String name = 'Animal';
  Animal() : super() {
    print('This is an animaal constructor');
  }

  @override
  void newFunc(var func) {
    print('I am an animal $func');
  }
}

class Feature {
  void displayFeature(var feature) {
    print('My special feature is $feature');
  }
}

// Interface and Abstracts
abstract class Room {
  void displayRoomSize(int size) {
    print('Your room size is $size');
  }

  void displayRoomPrice(int price) {
    print('Your room cost $price');
  }
}

class Tax {
  void displayPendingRoomTax(int tax) {
    print('you have $tax ghs to pay ');
  }

  void amountToPay(int amount) {
    print('You are about to pay $amount');
  }
}

class House extends Room {}

class Rent implements Tax {
  @override
  void amountToPay(int amount) {
    // TODO: implement amountToPay
    print('You are payng $amount');
  }

  @override
  void displayPendingRoomTax(int tax) {
    // TODO: implement displayPendingRoomTax
    print('You are oweing $tax');
  }
}
