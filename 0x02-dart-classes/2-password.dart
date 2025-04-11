class Password {
  String password = '';

  bool isValid() {
    // Check length between 8 and 16
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check for uppercase letters
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));

    // Check for lowercase letters
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));

    // Check for numbers
    bool hasNumber = password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
