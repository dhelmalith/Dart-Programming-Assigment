import 'dart:convert';

void main() {

  // Load the JSON file.
  String jsonString = """
  {
    "May": 3,
    "May": 5,
    "November": 2,
    "December": 1,
    "December": 4,
    "December": 2,
  }
  """;
  Map<String, int> birthdays = jsonDecode(jsonString);

  // Extract the months of all the birthdays
  Set<String> months = birthdays.keys.toSet();

  // Count how many birthdays in each month
  Map<String, int > monthCounts = {};
  for (String month in months) {
    int count = birthdays[month] ?? 0;
    monthCounts[month] = count;
  }

  // Find the month with the highest and lowest birthdays
  String monthWithHighestBirthdays = "";
  int highestBirthdays = 0;
  String monthWithLowestBirthdays = "";
  int lowestBirthdays = birthdays.values.reduce(max);
  for (String month in months) {
    int count = monthCounts[month] ?? 0;
    if (count > highestBirthdays) {
      highestBirthdays = count;
      monthWithHighestBirthdays = month;
    } else if (count < lowestBirthdays) {
      lowestBirthdays = count;
      monthWithLowestBirthdays = month;
    }
  }

  // Print the results
  print ("The months with the birthdays are:");
  for (String month in months) {
    print (" ${month}: ${monthCounts[month]}");
  }
  print ("The month with the highest number of birthdays is ${monthWithHighestBirthdays} with ${highestBirthdays} birthdays.");
   print ("The month with the lowest number of birthdays is ${monthWithLowestBirthdays} with ${lowestBirthdays} birthdays.")
}