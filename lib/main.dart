import 'package:bootcamp_project_completed/core/styles/app_colors.dart';
import 'package:bootcamp_project_completed/core/styles/app_typography.dart';
import 'package:bootcamp_project_completed/screens/login/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
        },
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        useMaterial3: true,
        fontFamily: AppTypography.fontFamily,
      ),
      home: const LoginScreen(),
    );
  }
}
