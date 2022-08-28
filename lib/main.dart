import 'package:finance_app/modules/home/home_page.dart';
import 'package:finance_app/modules/sign_up/sign_up_page.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finance_app/modules/home/home_controlle.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: const Start(),
    ),
  );
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: AppColors.stroke),
      home: const SignUpPage(),
    );
  }
}
