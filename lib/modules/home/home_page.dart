import 'package:finance_app/modules/home/home_controlle.dart';
import 'package:finance_app/shared/widgets/balance.dart';
import 'package:finance_app/shared/widgets/footer.dart';
import 'package:finance_app/shared/widgets/header.dart';
import 'package:finance_app/shared/widgets/history.dart';
import 'package:finance_app/shared/widgets/modal.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFDBDCFD), Color(0xFFEEEEEE)],
            ),
          ),
          child: Stack(
            children: [
              // Tela Principal
              Padding(
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

              // Plano de fundo escurinho que some
              Positioned(
                top: 0,
                left: 0,
                child: Consumer<HomeController>(
                  builder: (context, controller, child) => InkWell(
                    onTap: () {
                      Provider.of<HomeController>(context, listen: false)
                          .setIsModal(false);
                    },
                    child: Visibility(
                      visible: controller.isModal,
                      child: Opacity(
                        opacity: 0.7,
                        child: Container(
                          height: size.height,
                          width: size.width,
                          color: AppColors.blue1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Modal
              Positioned(
                child: Consumer<HomeController>(
                  builder: (context, controller, child) => Visibility(
                    visible: controller.isModal,
                    child: Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        children: const [Modal()],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
