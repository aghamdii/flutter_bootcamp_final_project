import 'package:bootcamp_project_completed/core/styles/app_colors.dart';
import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_bloc.dart';
import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_state.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/bottom_navigation/home_bottom_navigation_bar.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/settings_tab/settings_tab.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/tasks_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _tabs = [
  TasksTab(),
  SettingsTab(),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
      create: (context) => HomeScreenBloc(),
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) => Scaffold(
          bottomNavigationBar: HomeBottomNavigationBar(
            currentIndex: state.tabIndex,
          ),
          backgroundColor: state.isDarkMode
              ? AppColors.darkBackgroundColor
              : AppColors.backgroundColor,
          body: Padding(
            padding: EdgeInsets.all(
              38.0,
            ),
            // I need to get the state
            child: _tabs[state.tabIndex],
          ),
        ),
      ),
    );
  }
}
