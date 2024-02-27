void main() {
  /*
  ==>Multiple Choice
   1:b
   2:d
   3:c
   4:c
   5:a
  */
  Map<String, double> cart = {
    'laptop': 30000,
    'keyboard': 500,
    'mouse': 100,
  };

  double totalSum = calculateTotalPrice(cart);
  if (totalSum != 0) {
    print('The sum of price = $totalSum');
  } else
    print('The sum of price = 0');

  List<int> ratings = [1, 3, 5, 4, 1];
  double? average = findAverageRating(ratings);
  if (average != null) {
    print('Average rating: $average');
  } else {
    print('The ratings list is empty.');
  }

  List<int> grades = [90, 89, 25, 80, 35];
  Map<String, dynamic> result = analyzeGrades(grades);
  print(result);
}

double calculateTotalPrice(Map<String, double> cart) {
  double sum = 0;
  cart.forEach((key, value) {
    sum += value;
  });
  return sum;
}

double? findAverageRating(List<int> ratings) {
  int sum = 0;
  if (!ratings.isEmpty) {
    for (int i in ratings) {
      sum += i;
    }
    double avarage = sum / ratings.length;
    return avarage;
  } else
    return null;
}

Map<String, dynamic> analyzeGrades(List<int> grades) {
  Map<String, dynamic> statistics = {
    'numberOfStudents': 0,
    'averageGrade': 0,
    'numberOfValedictorians': 0,
    'numberOfFailures': 0,
  };
  if (grades.isEmpty) return statistics;

  int sum = 0;
  int numberOfValedictorians = 0;
  int numberOfFailures = 0;
  for (int i in grades) {
    sum += i;
    if (i > 85)
      numberOfValedictorians++;
    else if (i < 40) numberOfFailures++;
  }
  double averageGrade = sum / grades.length;

  statistics['numberOfStudents'] = grades.length;
  statistics['averageGrade'] = averageGrade;
  statistics['numberOfValedictorians'] = numberOfValedictorians;
  statistics['numberOfFailures'] = numberOfFailures;

  return statistics;
}
