import 'package:finance_app/modules/home/home_controlle.dart';
import 'package:finance_app/modules/modal/modal_controller.dart';
import 'package:finance_app/shared/widgets/footer.dart';
import 'package:finance_app/shared/widgets/header.dart';
import 'package:finance_app/shared/widgets/myList.dart';
import 'package:finance_app/modules/modal/modal.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../../shared/themes/app_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ModalController modalController = ModalController();
  @override
  void initState() {
    super.initState();
    modalController.addListener(() {
      setState(() {});
    });
  }

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
                  children: <Widget>[
                    const Header(),
                    const SizedBox(height: 10),

                    // Balance - Telinha mostrando os valores de entradas e saidas
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Total do mês atual",
                                    style: AppTextStyle.header18),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Entrou', style: AppTextStyle.light),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                          left: 15,
                                          right: 20),
                                      decoration: BoxDecoration(
                                        color: AppColors.v2,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text('299,99R\$',
                                          style: AppTextStyle.header18),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Saiu', style: AppTextStyle.light),
                                    Container(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 15,
                                            right: 20),
                                        decoration: BoxDecoration(
                                          color: AppColors.v1,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text('-199,99R\$',
                                            style: AppTextStyle.header18)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(height: 10),
                    // Tela da lista
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            // Cabeçalho e botão para adiconar nova entrada
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Histórico Deste Mês',
                                    style: AppTextStyle.header),
                                ElevatedButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          right: 5,
                                          left: 5,
                                          top: 10,
                                          bottom: 10),
                                      backgroundColor: AppColors.blue2),
                                  onPressed: () {
                                    // Open Modal
                                    modalController.open();
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        'Nova entrada',
                                        style: AppTextStyle.addButton,
                                      ),
                                      const Icon(
                                        Icons.add_rounded,
                                        color: AppColors.white,
                                        size: 35,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // Lista para vizualizar
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: MyList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Footer(),
                  ],
                ),
              ),

              // Plano de fundo escurinho que some
              Positioned(
                top: 0,
                left: 0,
                child: Visibility(
                  visible: modalController.value,
                  child: Opacity(
                    opacity: 0.7,
                    child: InkWell(
                      onTap: () {
                        modalController.close();
                      },
                      child: Container(
                        height: size.height,
                        width: size.width,
                        color: AppColors.blue1,
                      ),
                    ),
                  ),
                ),
              ),

              // Modal
              Positioned(
                child: Visibility(
                  visible: modalController.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      children: [
                        Modal(
                          closeModal: () {
                            modalController.close();
                          },
                        )
                      ],
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
