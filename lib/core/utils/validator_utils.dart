class ValidatorUtils {
  static String? validateEmail(String? text) {
    if (text == null || !text.contains('@')) {
      return 'Enter a valid email';
    } else {
      return null;
    }
  }

  static String? validatePassword(String? text) {
    if (text == null || text.length < 5) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }
}
