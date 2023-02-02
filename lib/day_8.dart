import 'dart:math' as math;

// Function to find the second-largest number in a list
int findSecondLargest(List<int> input) {
  // Sort the input list in ascending order
  input.sort();

  // Return the second-last element in the list
  return input[input.length - 2];
}

int findSecondLargest2(List<int> input) {
  // Find the maximum number in the input list
  int max = input.reduce(math.max);

  // Remove the maximum number from the input list
  List<int> filteredList = input.where((number) => number != max).toList();

  // Find the new maximum number in the filtered list
  return filteredList.reduce(math.max);
}
