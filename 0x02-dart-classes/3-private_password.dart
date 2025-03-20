class Password {
  String _password = "";

  // Constructor
  Password({required String password}) {
    _password = password;
  }

  // Check if the password is valid
  bool isValid() {
    return _password.length >= 8 &&
           _password.length <= 16 &&
           _password.contains(RegExp(r'[A-Z]')) && // At least one uppercase
           _password.contains(RegExp(r'[a-z]')) && // At least one lowercase
           _password.contains(RegExp(r'[0-9]'));   // At least one number
  }

  // Override toString method
  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
