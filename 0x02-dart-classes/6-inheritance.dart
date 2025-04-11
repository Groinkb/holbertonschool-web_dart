class Password {
  String? _password;

  Password({String? password}) : _password = password;

  // Getter
  String? get password {
    return _password;
  }

  // Setter
  set password(String? value) {
    _password = value;
  }

  bool isValid() {
    if (_password == null) {
      return false;
    }

    // Check length between 8 and 16
    if (_password!.length < 8 || _password!.length > 16) {
      return false;
    }

    // Check for uppercase letters
    bool hasUppercase = _password!.contains(RegExp(r'[A-Z]'));

    // Check for lowercase letters
    bool hasLowercase = _password!.contains(RegExp(r'[a-z]'));

    // Check for numbers
    bool hasNumber = _password!.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: ${_password ?? ''}";
  }
}
