import 'package:bootcamp_project_completed/core/styles/app_text_styles.dart';
import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_bloc.dart';
import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_event.dart';
import 'package:bootcamp_project_completed/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings',
          style: AppTextStyles.titleTextStyle,
        ),
        const SizedBox(
          height: 48.0,
        ),
        ElevatedButton(
          child: Text('Change theme'),
          onPressed: () {
            context.read<HomeScreenBloc>().add(
                  HomeScreenThemeChanged(),
                );
          },
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (Route<dynamic> route) => false,
            );
          },
          child: Text(
            'Signout',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
