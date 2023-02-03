Map<String, int> subStringFrequency(String sentence, String word) {
  // Initialize the count for the word
  int count = 0;

  // Split the sentence into words using spaces as a separator
  List<String> words = sentence.split(" ");

  // Loop through the words
  for (String wrd in words) {
    // Remove all non-word characters
    String cleanWord = wrd.replaceAll(RegExp(r"[^\w\s]+"), "");

    // If the word is equal to the current word, increment the count
    if (word == cleanWord) {
      count++;
    }
  }

  // Store the count in a map with the word as the key
  Map<String, int> subStringCount = {word: count};

  // Return the map
  return subStringCount;
}

Map<String, int> subStringFrequency2(String sentence, String word) {
  // Create a Map object to store the result
  Map<String, int> subStringCount = {};
  // Initialize a counter for the frequency of the substring
  int count = 0;

  // Split the sentence into a list of words using the .split() method
  List<String> words = sentence.split(" ");

  // Loop through each word in the list
  for (String wrd in words) {
    // Remove any non-word characters from
    // the word using the .replaceAll() method
    String cleanWord = wrd.replaceAll(RegExp(r"[^\w\s]+"), "");

    // If the cleaned word is equal to the substring,
    // increment the counter
    if (word == cleanWord) {
      count++;
    }
  }

  // Add the substring and its frequency to the Map object
  subStringCount[word] = count;
  // Return the Map object
  return subStringCount;
}
