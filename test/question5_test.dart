import 'package:test/test.dart';
import '../question5.dart';

void main() {
  group('Question 5 Tests - Employee Management System', () {
    test('Manager should have correct job title', () {
      Manager manager = Manager('John Smith', 'M001', 'IT', 5);
      expect(manager.getJobTitle(), equals('Manager'));
    });

    test('Manager should have correct base salary', () {
      Manager manager = Manager('John Smith', 'M001', 'IT', 5);
      expect(manager.getBaseSalary(), equals(8000.0));
    });

    test('Manager should calculate salary correctly with bonus', () {
      Manager manager = Manager('John Smith', 'M001', 'IT', 5);
      double salary = manager.calculateSalary(8000.0, 1000.0);
      expect(salary, equals(9000.0));
    });

    test('Manager should generate report', () {
      Manager manager = Manager('John Smith', 'M001', 'IT', 5);
      String report = manager.generateReport('John Smith', 'IT');
      expect(report, contains('John Smith'));
      expect(report, contains('IT'));
    });

    test('Developer should have correct job title', () {
      Developer dev = Developer('Alice Johnson', 'D001', 'IT', 'Dart');
      expect(dev.getJobTitle(), equals('Senior Developer'));
    });

    test('Developer should have correct base salary', () {
      Developer dev = Developer('Alice Johnson', 'D001', 'IT', 'Dart');
      expect(dev.getBaseSalary(), equals(6000.0));
    });

    test('Developer should calculate salary correctly with bonus', () {
      Developer dev = Developer('Alice Johnson', 'D001', 'IT', 'Dart');
      double salary = dev.calculateSalary(6000.0, 500.0);
      expect(salary, equals(6500.0));
    });

    test('Manager should have teamSize property', () {
      Manager manager = Manager('John Smith', 'M001', 'IT', 5);
      expect(manager.teamSize, equals(5));
    });
  });
}