import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_bloc.dart';
import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    required this.currentIndex,
    super.key,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        context.read<HomeScreenBloc>().add(HomeScreenTabPressed(value));
      },
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Tasks',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
