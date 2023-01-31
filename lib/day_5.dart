import 'dart:math' as math;

Map<String, int> findMaxMinWithLoop(List<int> numbers) {
  int max = numbers[0];
  int min = numbers[0];

  // Loop through the list to find the max and min values
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  // Return a map with the max and min values
  return {'max': max, 'min': min};
}

Map<String, int> findMaxMinWithReduce(List<int> numbers) {
  // Use the reduce method to find the max and min values
  int max = numbers.reduce(math.max);
  int min = numbers.reduce(math.min);

  // Return a map with the max and min values
  return {'max': max, 'min': min};
}
//? reduce is a higher-order function that takes a binary function (e.g. math.max or math.min) 
//? and returns a single value. This value is the result of applying the binary function 
//? to the elements of a list. 
//? math.max and math.min functions take two arguments and return the maximum or minimum value, respectively. 
//? By calling reduce with math.max, we can find the maximum value in the list. 
//? Similarly, by calling reduce with math.min, we can find the minimum value in the list.
