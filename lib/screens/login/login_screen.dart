import 'package:bootcamp_project_completed/core/styles/app_colors.dart';
import 'package:bootcamp_project_completed/core/styles/app_text_styles.dart';
import 'package:bootcamp_project_completed/core/utils/assets_utils.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/bloc/login_form_bloc.dart';
import 'package:bootcamp_project_completed/screens/login/widgets/login_form/login_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginFormBloc>(
      create: (context) => LoginFormBloc(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(38.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Todoie',
                style: AppTextStyles.logoTextStyle,
              ),
              const SizedBox(
                height: 28.0,
              ),
              Row(
                children: [
                  Text(
                    'Welcome again!',
                    style: AppTextStyles.titleTextStyle,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Image.asset(
                    AssetsUtils.waveHandImage,
                    height: 42.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 28.0,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
