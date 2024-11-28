import 'package:bootcamp_project_completed/core/styles/app_text_styles.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_bloc.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_event.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_state.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/widgets/tasks_list/widgets/tasks_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tasks List',
          style: AppTextStyles.titleTextStyle,
        ),
        const SizedBox(
          height: 18.0,
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
                height: 150.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.tasks.length,
                  itemBuilder: (context, index) {
                    return TasksListItem(
                      todo: state.tasks[index].todo,
                      onCheckChanged: (value) {
                        if (value == true) {
                          context.read<TasksTabBloc>().add(
                                TasksTabTaskAdded(
                                  state.tasks[index],
                                ),
                              );
                        } else {
                          context.read<TasksTabBloc>().add(
                                TasksTabTaskRemoved(
                                  state.tasks[index],
                                ),
                              );
                        }
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8.0,
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
