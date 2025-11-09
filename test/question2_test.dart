import 'package:test/test.dart';
import '../question2.dart';

void main() {
  group('Question 2 Tests - Collections & Control Flow', () {
    test('categorizeScore should return Excellent for 90+', () {
      expect(categorizeScore(95), equals('Excellent'));
      expect(categorizeScore(90), equals('Excellent'));
      expect(categorizeScore(100), equals('Excellent'));
    });

    test('categorizeScore should return Good for 80-89', () {
      expect(categorizeScore(85), equals('Good'));
      expect(categorizeScore(80), equals('Good'));
      expect(categorizeScore(89), equals('Good'));
    });

    test('categorizeScore should return Average for 70-79', () {
      expect(categorizeScore(75), equals('Average'));
      expect(categorizeScore(70), equals('Average'));
      expect(categorizeScore(79), equals('Average'));
    });

    test('categorizeScore should return Needs Improvement for below 70', () {
      expect(categorizeScore(65), equals('Needs Improvement'));
      expect(categorizeScore(50), equals('Needs Improvement'));
      expect(categorizeScore(60), equals('Needs Improvement'));
    });
  });
}