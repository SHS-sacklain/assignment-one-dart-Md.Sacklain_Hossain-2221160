import 'dart:math';

void main() {
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> studentScores = {};
  Random random = Random();
  for (String student in students) {
    studentScores[student] = 60 + random.nextInt(41); // 60 to 100
  }
  print('Student Scores:');
  studentScores.forEach((name, score) {
    print('$name: $score');
  });
  print('');
  String topStudent = '';
  int highestScore = 0;
  studentScores.forEach((name, score) {
    if (score > highestScore) {
      highestScore = score;
      topStudent = name;
    }
  });
  print('Highest Score: $topStudent - $highestScore');
  String lowestStudent = '';
  int lowestScore = 100;
  studentScores.forEach((name, score) {
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = name;
    }
  });
  print('Lowest Score: $lowestStudent - $lowestScore');
  int totalScore = 0;
  studentScores.forEach((name, score) {
    totalScore += score;
  });
  double averageScore = totalScore / studentScores.length;
  print('Average Score: ${averageScore.toStringAsFixed(2)}');
  print('');
  print('Student Categories:');
  studentScores.forEach((name, score) {
    String category = categorizeScore(score);
    print('$name: $category');
  });
}
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
