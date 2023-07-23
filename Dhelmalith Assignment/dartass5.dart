void main () {

  // Get a string from the user.
  String input = stdin.readLineSync ();

  // Split the string into words.
  List<String> words = input.split (" ");

  // Reverse the order of the words in the list. 
  List<String> reversedWords = words.reversed.toList ();

  // Join the words back together to form a new string.
  String reversedString = reversedWords.join(" ");

  // Print the reversed string.
  print(reversedString);
}