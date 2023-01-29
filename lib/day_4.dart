String removePuntuation(String sentense) {
  String neuSentence = '';
  for (int i = 0; i < sentense.length; i++) {
    bool isValid = RegExp(r'[A-Za-z]').hasMatch(sentense[i]);
    if (isValid || sentense[i] == ' ') {
      neuSentence += sentense[i];
    }
  }
  return neuSentence;
}

///? This function is used to remove all punctuation from a given sentence.
///? It takes a String as input and loops through each character of the sentence.
///? For each character, it uses a regular expression to check if it is a letter or not.
///? If the character is a letter or a space, it will be added to the new sentence.
///? All other characters are ignored.
///? The new sentence without punctuation is returned as output.

String removePunctuationDuo(String sentence) {
  return sentence.replaceAll(RegExp(r'[^A-Za-z\s]'), '');
}

///? This function removes all punctuation marks from a given sentence.
///? It uses a regular expression to match any non-alphabetic or non-whitespace characters
///? and replaces them with an empty string.
///?
///? @param sentence - The sentence from which punctuation marks should be removed.
///? @return A new sentence with all punctuation marks removed.
