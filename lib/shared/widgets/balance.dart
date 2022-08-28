import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text("Total do mês atual", style: AppTextStyle.header18),
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
                          top: 10, bottom: 10, left: 15, right: 20),
                      decoration: BoxDecoration(
                        color: AppColors.v2,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('299,99R\$', style: AppTextStyle.header18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Saiu', style: AppTextStyle.light),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 15, right: 20),
                        decoration: BoxDecoration(
                          color: AppColors.v1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:
                            Text('-199,99R\$', style: AppTextStyle.header18)),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
