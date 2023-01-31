// Solution 1: Using the where method
List<int> filterEvenNumbersWithWhere(List<int> numbers) {
  // Use the where method to filter out even numbers
  List<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();

  // Return the list of even numbers
  return evenNumbers;
}

// Solution 2: Using a for loop
List<int> filterEvenNumbersWithForLoop(List<int> numbers) {
  // Create a list to store the even numbers
  List<int> evenNumbers = [];

  // Loop through the list and check if each number is even
  for (int num in numbers) {
    if (num % 2 == 0) {
      evenNumbers.add(num);
    }
  }

  // Return the list of even numbers
  return evenNumbers;
}
