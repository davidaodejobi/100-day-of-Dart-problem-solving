Map<String, dynamic> getMeanMedianMode(List<int> numbers) {
  Map<String, dynamic> results = {};

  // mean
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  double mean = sum / numbers.length;
  results['mean'] = mean;

  // median
  numbers.sort();
  int midIndex = numbers.length ~/ 2;
  double median = numbers.length.isEven
      ? (numbers[midIndex] + numbers[midIndex - 1]) / 2.0
      : numbers[midIndex].toDouble();
  results['median'] = median;

  // mode
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
