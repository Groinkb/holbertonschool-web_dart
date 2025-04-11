bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - 1 - i]) {
      return false;
    }
  }

  return true;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substr = s.substring(i, j);
      if (isPalindrome(substr) && substr.length > longest.length) {
        longest = substr;
      }
    }
  }

  return longest.isEmpty ? "none" : longest;
}
