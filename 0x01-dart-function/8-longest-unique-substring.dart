String longestUniqueSubstring(String str) {
  if (str.isEmpty) return "";

  Map<String, int> lastSeen = {};
  int start = 0;
  int maxLength = 0;
  int resultStart = 0;

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (lastSeen.containsKey(currentChar) && lastSeen[currentChar]! >= start) {
      start = lastSeen[currentChar]! + 1;
    }

    lastSeen[currentChar] = end;

    int currentLength = end - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      resultStart = start;
    }
  }

  return str.substring(resultStart, resultStart + maxLength);
}