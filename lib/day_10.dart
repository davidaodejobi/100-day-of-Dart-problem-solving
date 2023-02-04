Map<String, dynamic> getMeanMedianMode(List<int> numbers) {
  Map<String, dynamic> results = {};

  // Calculate the mean by summing up all the numbers and dividing by the length of the list
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  double mean = sum / numbers.length;
  results['mean'] = mean;

  // Calculate the median by first sorting the list, then finding the middle value(s)
  numbers.sort();
  int midIndex = numbers.length ~/ 2;
  double median = numbers.length.isEven
      ? (numbers[midIndex] + numbers[midIndex - 1]) / 2.0
      : numbers[midIndex].toDouble();
  results['median'] = median;

  // Calculate the mode by keeping a frequency map, then finding the number(s) with the highest frequency
  Map<int, int> frequencyMap = {};
  int maxFrequency = 0;
  int mode = numbers[0];
  for (int num in numbers) {
    frequencyMap[num] =
        frequencyMap.containsKey(num) ? frequencyMap[num]! + 1 : 1;
    if (frequencyMap[num]! > maxFrequency) {
      mode = num;
      maxFrequency = frequencyMap[num]!;
    }
  }
  results['mode'] = mode;

  return results;
}
