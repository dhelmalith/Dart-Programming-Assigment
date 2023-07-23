void main () {
  List<int> a = [5,10,15,20,25];

  // Create a new list of the first and last elements of the given list.
  List<int> firstandlast = [a[0], a[a.length - 1]];

  // Print out the new list.
  print(firstandlast);
}


// Here is the function version of the code.

List<int> firstandlast (List<int> list) {
  // Create a new list of the first and last elements of the given list.
  List<int> firstandlast = [list[0], list[list.length - 1]];

  return firstandlast;
}

void main () {
  List<int> a = [5,10,15,20,25];

  // Print out the new list.
  print(firstandlast(a));
}