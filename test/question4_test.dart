import 'package:test/test.dart';
import '../question4.dart';

void main() {
  group('Question 4 Tests - Vehicle Management System', () {
    test('Car should have correct properties', () {
      Car car = Car('Toyota', 'Camry', 2020, 4);
      expect(car.brand, equals('Toyota'));
      expect(car.model, equals('Camry'));
      expect(car.year, equals(2020));
      expect(car.numberOfDoors, equals(4));
    });

    test('Motorcycle should have correct properties', () {
      Motorcycle bike = Motorcycle('Honda', 'CBR', 2021, true);
      expect(bike.brand, equals('Honda'));
      expect(bike.model, equals('CBR'));
      expect(bike.year, equals(2021));
      expect(bike.hasWindshield, equals(true));
    });

    test('Car should calculate age correctly', () {
      Car car = Car('Toyota', 'Camry', 2020, 4);
      int age = car.calculateAge();
      expect(age, greaterThanOrEqualTo(3)); // At least 3 years old
    });

    test('Motorcycle should calculate age correctly', () {
      Motorcycle bike = Motorcycle('Honda', 'CBR', 2021, true);
      int age = bike.calculateAge();
      expect(age, greaterThanOrEqualTo(2)); // At least 2 years old
    });

    test('Vehicle polymorphism - Car is a Vehicle', () {
      Vehicle car = Car('Toyota', 'Camry', 2020, 4);
      expect(car is Vehicle, isTrue);
      expect(car is Car, isTrue);
    });

    test('Vehicle polymorphism - Motorcycle is a Vehicle', () {
      Vehicle bike = Motorcycle('Honda', 'CBR', 2021, true);
      expect(bike is Vehicle, isTrue);
      expect(bike is Motorcycle, isTrue);
    });
  });
}