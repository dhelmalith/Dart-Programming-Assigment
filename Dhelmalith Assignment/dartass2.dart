void main() {
  List<int> a= [1,1,2,3,5,8,13,21,34,55,89];
  List<int> b= [1,2,3,4,5,6,7,8,9,10,11,12,13];

  // Create a set of the elements in the first list.
  set<int> setA = set. from(a);

  // Create a list of the elements that are common between the two lists.
  List<int> commonElements = [];
  for (int i in b) {
    if (setA.contains(i)) {
      commonElements.add(i);
    }
  }

  // Print out the list of common elements.
  Print(commonElements)
}
  