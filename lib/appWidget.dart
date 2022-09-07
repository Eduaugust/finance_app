import 'package:finance_app/modules/home/home_page.dart';
import 'package:finance_app/modules/sign_up/sign_up_page.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: AppColors.stroke, primarySwatch: Colors.blueGrey),
        routes: {
          '/home': (context) => const HomePage(),
          '/sign_up': (context) => const SignUpPage()
        },
        initialRoute: '/sign_up');
  }
}
