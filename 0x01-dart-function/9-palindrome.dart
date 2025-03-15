//Write a function isPalindrome() that accepts one argument String and returns True if the input String is a palindrome otherwise it returns False.

//Function prototype: bool isPalindrome(String s); A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome.


bool isPalindrome(String s){
  if(s.length < 3){
    return false;
  }
  for(int i = 0; i < s.length/2; i++){
    if(s[i] != s[s.length-1-i]){
      return false;
    }
  }
  return true;
}