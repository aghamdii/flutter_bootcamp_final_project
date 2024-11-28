import 'package:bootcamp_project_completed/core/styles/app_colors.dart';
import 'package:bootcamp_project_completed/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

class DayTasksListItem extends StatelessWidget {
  const DayTasksListItem({
    required this.task,
    super.key,
  });

  final String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 85,
      padding: EdgeInsets.all(
        18.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.tertiaryColor,
        borderRadius: BorderRadius.circular(
          AppConstants.containerBorderRadius,
        ),
      ),
      child: Text(
        task,
      ),
    );
  }
}
