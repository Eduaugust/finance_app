import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_images.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Botao drawer
        SizedBox(
          height: 40,
          width: 40,
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.white)),
              onPressed: () {},
              child: const Icon(
                Icons.menu,
                color: AppColors.blue1,
              )),
        ),

        const Spacer(),

        // Nome e email
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
          Text(
            'Olaph Jr',
            style: AppTextStyle.header16,
          ),
          Text(
            'Olaph@bytejr.com',
            style: AppTextStyle.light,
          ),
        ]),
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: Image.asset(
            AppImages.happyIcon,
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }
}
