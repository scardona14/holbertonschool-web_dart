class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  String get password => _password;
  set password(String value) => _password = value;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) return false;
    if (!RegExp(r'[A-Z]').hasMatch(_password)) return false;
    if (!RegExp(r'[a-z]').hasMatch(_password)) return false;
    if (!RegExp(r'[0-9]').hasMatch(_password)) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}