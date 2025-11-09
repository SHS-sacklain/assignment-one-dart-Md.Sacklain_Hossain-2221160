// Question 1: Basic Data Types & Functions

void main() {
  // Create variables of different data types
  String name = "John Doe";
  int age = 25;
  double height = 5.9;
  bool isStudent = true;

  // Display basic information using string interpolation
  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');

  // Calculate and display BMI
  double weight = 75.0; // in kg
  double heightInMeters = 1.75; // convert feet to meters
  double bmi = calculateBMI(weight, heightInMeters);
  print('BMI: ${bmi.toStringAsFixed(1)}');

  // Get and display grade
  int score = 85;
  String grade = getGrade(score);
  print('Grade: $grade');
}

// Function to calculate BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// Function to get grade based on score
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80 && score < 90) {
    return 'B';
  } else if (score >= 70 && score < 80) {
    return 'C';
  } else if (score >= 60 && score < 70) {
    return 'D';
  } else {
    return 'F';
  }
}
