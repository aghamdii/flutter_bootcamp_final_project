import 'package:bootcamp_project_completed/core/styles/app_text_styles.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_bloc.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_state.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/widgets/day_tasks_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayTasksList extends StatelessWidget {
  const DayTasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Day Tasks',
          style: AppTextStyles.titleTextStyle,
        ),
        const SizedBox(
          height: 8.0,
        ),
        BlocBuilder<TasksTabBloc, TasksTabState>(
          builder: (context, state) {
            if (state is TasksTabLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is TasksTabFailure) {
              return Center(
                child: Text('Error happened ${state.errorMessage}'),
              );
            } else if (state is TasksTabSuccess) {
              return SizedBox(
                height: 500.0,
                child: state.selectedTasks.isEmpty
                    ? Text('No Tasks Today')
                    : ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: state.selectedTasks.length,
                        itemBuilder: (context, index) {
                          return DayTasksListItem(
                              task: state.selectedTasks[index].todo);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 8.0,
                          );
                        },
                      ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}
