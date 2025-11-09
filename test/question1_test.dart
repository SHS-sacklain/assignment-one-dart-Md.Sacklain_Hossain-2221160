import 'package:test/test.dart';
import '../question1.dart';

void main() {
  group('Question 1 Tests', () {
    test('calculateBMI should return correct value', () {
      double result = calculateBMI(70.0, 1.75);
      expect(result, closeTo(22.86, 0.01));
    });

    test('getGrade should return A for scores 90-100', () {
      expect(getGrade(95), equals('A'));
      expect(getGrade(90), equals('A'));
    });

    test('getGrade should return B for scores 80-89', () {
      expect(getGrade(85), equals('B'));
      expect(getGrade(80), equals('B'));
    });

    test('getGrade should return F for scores below 60', () {
      expect(getGrade(50), equals('F'));
    });
  });
}