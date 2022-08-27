import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:finance_app/shared/widgets/listItem.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text('Histórico Deste Mês', style: AppTextStyle.header16),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                        right: 5, left: 5, top: 10, bottom: 10),
                    backgroundColor: AppColors.blue2),
                onPressed: () {
                  // Open Modal
                },
                child: Row(
                  children: [
                    Text(
                      'Nova entrada',
                      style: AppTextStyle.addButton,
                    ),
                    const Icon(
                      Icons.add,
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
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: const MyList(),
            ),
          )
        ],
      ),
    );
  }
}

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
