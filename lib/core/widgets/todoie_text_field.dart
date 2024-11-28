import 'package:bootcamp_project_completed/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class TodoieTextField extends StatelessWidget {
  const TodoieTextField({
    required this.label,
    this.onChanged,
    this.controller,
    this.validator,
    this.isPassword,
    super.key,
  });

  final String label;
  final void Function(String? text)? onChanged;
  final TextEditingController? controller;
  final String? Function(String? text)? validator;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          height: 4.0,
        ),
        TextFormField(
          validator: validator,
          onChanged: onChanged,
          controller: controller,
          obscureText: isPassword ?? false,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 3,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
              borderSide: BorderSide(
                color: AppColors.errorLightColor,
                width: 3,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
              borderSide: BorderSide(
                color: AppColors.errorColor,
                width: 3,
              ),
            ),
          ),
        )
      ],
    );
  }
}
