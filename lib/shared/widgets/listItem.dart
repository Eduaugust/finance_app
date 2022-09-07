import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String entrance;
  final String value;
  final String description;
  final String date;
  final VoidCallback deleteItem;

  const ListItem(
      {Key? key,
      required this.entrance,
      required this.value,
      required this.date,
      required this.description,
      required this.deleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Entrada e valor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entrance,
                      style: (entrance == 'Entrada')
                          ? AppTextStyle.listItemEntrada
                          : AppTextStyle.listItemSaida),
                  Text("${value}R\$", style: AppTextStyle.light),
                ],
              ),
              const SizedBox(width: 12),

              // Descricao e data
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(description, style: AppTextStyle.light),
                  Text(date, style: AppTextStyle.light),
                ],
              ),
            ],
          ),
          TextButton.icon(
            label: Container(),
            style: TextButton.styleFrom(backgroundColor: AppColors.white),
            onPressed: deleteItem,
            icon: const Icon(
              Icons.delete_forever_outlined,
              color: AppColors.blue1,
            ),
          ),
        ],
      ),
    );
  }
}
