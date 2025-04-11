String longestUniqueSubstring(String str) {
  if (str.isEmpty) return "";

  int start = 0;
  int maxLength = 0;
  int maxStart = 0;
  Map<String, int> charMap = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (charMap.containsKey(currentChar) && charMap[currentChar]! >= start) {
      start = charMap[currentChar]! + 1;
    }

    charMap[currentChar] = i;

    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}
