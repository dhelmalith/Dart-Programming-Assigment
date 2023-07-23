void main () {

  // Create a list with duplicates
  List<int> list = [1,2,3,1,2,4,5];

  // Create a new list to store the unique elements.
  List<int> uniqueList = [];

  // Iterate over the original list and add each unique element to the new list.
  for (int element in list) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }

  // Print the new list with unique elements.
  print(uniqueList);
}