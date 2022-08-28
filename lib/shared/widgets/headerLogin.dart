import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_images.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImages.moneyLogo),
        IntrinsicWidth(
          child: Column(
            children: [
              Text('Controle financeiro ', style: AppTextStyle.regular28),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 65,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.blue1,
                          borderRadius: BorderRadius.circular(3)),
                      height: 3,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.blue1,
                          borderRadius: BorderRadius.circular(3)),
                      height: 3,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.blue1,
                          borderRadius: BorderRadius.circular(3)),
                      height: 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
