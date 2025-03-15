//Write a function longestPalindrome() that accepts one argument String and returns the longest palindrome substring.

//Function prototype : String longestPalindrome(String s);

//A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome. You can use the function isPalindrome(). If the input string doesn’t contain any substrings return none.


String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      String sub = s.substring(i, j + 1);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }

  // Ensure we return "none" if the longest palindrome is less than 3 characters
  return longest.length >= 3 ? longest : "none";
}

// ✅ Fixed isPalindrome function
bool isPalindrome(String s) {
  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - i - 1]) {
      return false;
    }
  }
  return true;
}

