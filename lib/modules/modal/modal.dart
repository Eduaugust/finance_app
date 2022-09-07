import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:finance_app/modules/modal/modal_controller.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:finance_app/shared/widgets/inputInsert.dart';

class Modal extends StatefulWidget {
  void Function() closeModal;
  Modal({
    Key? key,
    required this.closeModal,
  }) : super(key: key);

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  final moneyInputTextController =
      MoneyMaskedTextController(leftSymbol: 'R\$', decimalSeparator: ',');
  final dateInputTextController = MaskedTextController(mask: '00/00/0000');
  FormController formController = FormController();
  @override
  void initState() {
    super.initState();
    formController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 870),
      margin: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.white,
      ),
      padding: const EdgeInsets.only(top: 15, right: 25, bottom: 15, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titulo
          Text('Cadastrar novo ativo', style: AppTextStyle.header18),
          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(child: Container(height: 1, color: AppColors.stroke))
            ],
          ),
          const SizedBox(height: 10),
          Form(
              key: formController.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Entrada ou Saida
                  Row(
                    children: [
                      Text('Entrada', style: AppTextStyle.entradaSaida),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          trackColor: AppColors.v2,
                          activeColor: AppColors.v1,
                          value: !formController.model.isOutFlow!,
                          onChanged: (bool value) {
                            formController.onChanged(isOutFlow: !value);
                          },
                        ),
                      ),
                      Text('Saída', style: AppTextStyle.entradaSaida),
                    ],
                  ),

                  // Valor e identificação
                  Row(
                    children: [
                      InputInsert(
                        keyboardType: TextInputType.number,
                        hintText: "Valor",
                        controller: moneyInputTextController,
                        onChanged: (value) {
                          formController.onChanged(
                              value: moneyInputTextController.numberValue);
                        },
                        validator: (_) => formController.validateValue(
                            moneyInputTextController.numberValue),
                      ),
                      InputInsert(
                        hintText: "Identificação",
                        validator: formController.validateIdentification,
                        onChanged: (value) {
                          formController.onChanged(identification: value);
                        },
                      )
                    ],
                  ),
                  // Data e Nº de vezes
                  Row(
                    children: [
                      InputInsert(
                        keyboardType: TextInputType.datetime,
                        hintText: "Data",
                        controller: dateInputTextController,
                        validator: formController.validateDate,
                        onChanged: (value) {
                          formController.onChanged(date: value);
                        },
                      ),
                      InputInsert(
                        keyboardType: TextInputType.number,
                        hintText: "Nº de vezes",
                        validator: formController.validateQty,
                        onChanged: (value) {
                          formController.onChanged(qty: value);
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Adicionar e fechar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(
                                  right: 5, left: 5, top: 10, bottom: 10),
                              backgroundColor: AppColors.blue2),
                          onPressed: () async {
                            await formController.cadastrarEntrada(context);
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add_rounded,
                                color: AppColors.white,
                                size: 16,
                              ),
                              Text(
                                'Adicionar',
                                style: AppTextStyle.addButton,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: AppColors.white),
                        onPressed: widget.closeModal,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: AppColors.blue2,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.close_rounded,
                            color: AppColors.blue2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
