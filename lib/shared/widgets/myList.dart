import 'package:flutter/material.dart';

import 'package:finance_app/shared/models/entrada_model.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/widgets/listItem.dart';

class MyList extends StatelessWidget {
  final dynamic itemsListArray;
  final Function(int) deleteItem;
  MyList({
    Key? key,
    required this.itemsListArray,
    required this.deleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsListArray.length,
      itemBuilder: (_, index) => Column(
        children: [
          const Separator(),
          ListItem(
              deleteItem: () {
                deleteItem(index);
              },
              entrance: itemsListArray[index].isOutFlow! ? "Entrada" : 'Saida',
              value: 'R\$ ${itemsListArray[index].value!.toString()}',
              description: itemsListArray[index].identification!,
              date: itemsListArray[index].date!),
          const Separator(),
        ],
      ),
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
