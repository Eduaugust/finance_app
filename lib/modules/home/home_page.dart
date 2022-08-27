import 'package:finance_app/shared/widgets/balance.dart';
import 'package:finance_app/shared/widgets/footer.dart';
import 'package:finance_app/shared/widgets/header.dart';
import 'package:finance_app/shared/widgets/history.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFDBDCFD), Color(0xFFEEEEEE)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const <Widget>[
                Header(),
                SizedBox(height: 10),
                Balance(),
                SizedBox(height: 10),
                Expanded(child: History()),
                SizedBox(height: 10),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
