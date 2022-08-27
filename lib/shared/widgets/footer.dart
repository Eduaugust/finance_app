import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_images.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(AppImages.byteIcon, height: 40, width: 40),
          Text('Projeto trainee 2022/2', style: AppTextStyle.light),
        ],
      ),
    );
  }
}
