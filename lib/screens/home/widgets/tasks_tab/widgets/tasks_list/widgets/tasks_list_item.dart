import 'package:bootcamp_project_completed/core/styles/app_colors.dart';
import 'package:bootcamp_project_completed/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

class TasksListItem extends StatefulWidget {
  const TasksListItem({
    required this.todo,
    required this.onCheckChanged,
    super.key,
  });

  final String todo;

  final void Function(bool? value) onCheckChanged;

  @override
  State<TasksListItem> createState() => _TasksListItemState();
}

class _TasksListItemState extends State<TasksListItem> {
  bool? _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 185,
      padding: EdgeInsets.all(
        18.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(
          AppConstants.containerBorderRadius,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: _selected,
            onChanged: (value) {
              widget.onCheckChanged(value);
              // Update the state
              setState(() {
                _selected = value;
              });
            },
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Text(
              widget.todo,
            ),
          ),
        ],
      ),
    );
  }
}
