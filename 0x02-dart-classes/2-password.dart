class Password {
  String password = "";

  // Check if the password is valid
  bool isValid() {
    return password.length >= 8 &&
           password.length <= 16 &&
           password.contains(RegExp(r'[A-Z]')) && // At least one uppercase
           password.contains(RegExp(r'[a-z]')) && // At least one lowercase
           password.contains(RegExp(r'[0-9]'));   // At least one number
  }

  // Override toString method
  @override
  String toString() {
    return "Your Password is: $password";
  }
}
