// Question 2: Collections & Control Flow

import 'dart:math';

void main() {
  // Create a list of student names
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // Create a map to store student scores
  Map<String, int> studentScores = {};

  // Random number generator
  Random random = Random();

  // Assign random scores (60-100) to each student
  for (String student in students) {
    studentScores[student] = 60 + random.nextInt(41); // 60 to 100
  }

  // Display all student scores
  print('Student Scores:');
  studentScores.forEach((name, score) {
    print('$name: $score');
  });
  print('');

  // Find the student with the highest score
  String topStudent = '';
  int highestScore = 0;
  studentScores.forEach((name, score) {
    if (score > highestScore) {
      highestScore = score;
      topStudent = name;
    }
  });
  print('Highest Score: $topStudent - $highestScore');

  // Find the student with the lowest score
  String lowestStudent = '';
  int lowestScore = 100;
  studentScores.forEach((name, score) {
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = name;
    }
  });
  print('Lowest Score: $lowestStudent - $lowestScore');

  // Calculate average score
  int totalScore = 0;
  studentScores.forEach((name, score) {
    totalScore += score;
  });
  double averageScore = totalScore / studentScores.length;
  print('Average Score: ${averageScore.toStringAsFixed(2)}');
  print('');

  // Categorize students using switch statement
  print('Student Categories:');
  studentScores.forEach((name, score) {
    String category = categorizeScore(score);
    print('$name: $category');
  });
}

// Function to categorize scores
String categorizeScore(int score) {
  switch (score ~/ 10) {
    case 10:
    case 9:
      return 'Excellent';
    case 8:
      return 'Good';
    case 7:
      return 'Average';
    default:
      return 'Needs Improvement';
  }
}
