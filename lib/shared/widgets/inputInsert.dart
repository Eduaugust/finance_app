import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class InputInsert extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String value) onChanged;
  const InputInsert({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.validator,
    this.controller,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.35,
      padding: const EdgeInsets.all(3),
      constraints: const BoxConstraints(maxWidth: 225),
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        initialValue: initialValue,
        style: AppTextStyle.light,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.stroke,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.stroke,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
