import 'package:finance_app/modules/home/home_page.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
