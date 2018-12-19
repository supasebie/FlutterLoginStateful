class ValidationMixin {
  String validateEmail(String value) {
    // Return null if valid
    // Otherwise string with error message if invalid
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 characters';
    } else {
      return null;
    }
  }
}
