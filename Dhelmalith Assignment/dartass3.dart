void main () {
  string str = "mum";

  // Check if the string is a palindrome.
  bool isPalindrome = true,
  for (int i = 0; i < str.length / 2; i++) {
    if (stri[i] != str[str.length - 1 - i]) {
      isPalindrome = false;
      break;
    }
  }

  // print out the result.
  if (isPalindrome) {
    print ("The string is a palindrome.");
  } else {
    print ("The string is not a palindrome.");
  }
}