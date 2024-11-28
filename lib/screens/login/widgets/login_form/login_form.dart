import 'package:bootcamp_project_completed/core/utils/validator_utils.dart';
import 'package:bootcamp_project_completed/core/widgets/todoie_text_field.dart';
import 'package:bootcamp_project_completed/screens/home/home_screen.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/bloc/login_form_bloc.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/bloc/login_form_event.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/bloc/login_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          TodoieTextField(
            label: 'Email',
            controller: emailController,
            validator: (text) {
              return ValidatorUtils.validateEmail(text);
            },
            onChanged: (text) {
              context.read<LoginFormBloc>().add(
                    LoginFormDataChanged(
                      emailController.text,
                      passwordController.text,
                    ),
                  );
            },
          ),
          const SizedBox(
            height: 28.0,
          ),
          TodoieTextField(
            label: 'Password',
            controller: passwordController,
            validator: (text) {
              return ValidatorUtils.validatePassword(text);
            },
            isPassword: true,
            onChanged: (text) {
              context.read<LoginFormBloc>().add(
                    LoginFormDataChanged(
                      emailController.text,
                      passwordController.text,
                    ),
                  );
            },
          ),
          const SizedBox(
            height: 28.0,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: BlocBuilder<LoginFormBloc, LoginFormState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state.isFormValid
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      : null,
                  child: Text('Login'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
