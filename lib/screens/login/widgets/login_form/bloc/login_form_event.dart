abstract class LoginFormEvent {}

class LoginFormDataChanged extends LoginFormEvent {
  LoginFormDataChanged(
    this.email,
    this.password,
  );

  final String email;
  final String password;
}
