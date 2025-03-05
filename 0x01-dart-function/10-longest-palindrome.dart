bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  return s == s.split('').reversed.join('');
}

String longestPalindrome (String s) {
  if (s.length < 3) return "none";

  for (int l = s.length; l >= 3; l--) {
    for (int start = 0; start <= s.length - l; start++) {
      String substr = s.substring(start, start + l);
      if (isPalindrome(substr)) {
        return substr;
    }
  }
}
  return "none";
}