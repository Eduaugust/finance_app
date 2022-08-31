import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/widgets/listItem.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Bolsa Estudantil',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
        ListItem(
            entrance: 'Entrada',
            value: '299,99',
            description: 'Lustra tentaculo',
            date: '25/07/2022'),
        Separator(),
      ],
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: AppColors.stroke,
          height: 1,
        )),
      ],
    );
  }
}
