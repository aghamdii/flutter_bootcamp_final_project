import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_bloc.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_event.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/widgets/day_tasks_list/day_tasks_list.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/widgets/tasks_list/tasks_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksTabBloc>(
      create: (context) => TasksTabBloc()
        ..add(
          TasksTabStarted(),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TasksList(),
          const SizedBox(
            height: 32.0,
          ),
          DayTasksList(),
        ],
      ),
    );
  }
}
