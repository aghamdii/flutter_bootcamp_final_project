import 'package:bootcamp_project_completed/core/utils/validator_utils.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/bloc/login_form_event.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/bloc/login_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc()
      : super(
          LoginFormState(
            isFormValid: false,
          ),
        ) {
    on<LoginFormDataChanged>(
      (event, emit) {
        final validForm = _validateForm(event.email, event.password);
        emit(
          LoginFormState(
            isFormValid: validForm,
          ),
        );
      },
    );
  }

  bool _validateForm(String email, String password) {
    final validEmail = ValidatorUtils.validateEmail(email) == null;
    final validPassword = ValidatorUtils.validatePassword(password) == null;

    return validEmail && validPassword;
  }
}
