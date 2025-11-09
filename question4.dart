// Question 4: Inheritance & Polymorphism

// Abstract class Vehicle
abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  // Abstract methods
  void start();
  void stop();

  // Concrete method
  void displayInfo() {
    print('Vehicle Info: $year $brand $model');
  }

  // Method to calculate vehicle age
  int calculateAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

// Car class extending Vehicle
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
    : super(brand, model, year);

  @override
  void start() {
    print('Starting the car engine...');
  }

  @override
  void stop() {
    print('Stopping the car engine...');
  }

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model ($numberOfDoors doors)');
  }
}

// Motorcycle class extending Vehicle
class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
    : super(brand, model, year);

  @override
  void start() {
    print('Starting the motorcycle engine...');
  }

  @override
  void stop() {
    print('Stopping the motorcycle engine...');
  }

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)');
  }
}

void main() {
  // Create a list of vehicles
  List<Vehicle> vehicles = [
    Car('Toyota', 'Camry', 2020, 4),
    Motorcycle('Honda', 'CBR', 2021, true),
    Car('Ford', 'Mustang', 2019, 2),
    Motorcycle('Harley-Davidson', 'Street 750', 2022, false),
  ];

  // Demonstrate polymorphism
  for (Vehicle vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print('${vehicle.runtimeType} age: ${vehicle.calculateAge()} years');
    print('');
  }
}
