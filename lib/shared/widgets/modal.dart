import 'package:finance_app/modules/home/home_controlle.dart';
import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import 'package:provider/provider.dart';

class Modal extends StatefulWidget {
  const Modal({Key? key}) : super(key: key);

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  @override
  Widget build(BuildContext context) {
    void closeModal() {
      Provider.of<HomeController>(context, listen: false).setIsModal(false);
    }

    final size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
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
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Entrada ou Saida
                  Row(
                    children: [
                      Text('Entrada', style: AppTextStyle.regular18),
                      Consumer<HomeController>(
                        builder: (context, controller, child) =>
                            Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            trackColor: AppColors.v2,
                            activeColor: AppColors.v1,
                            value: controller.isOutFlow,
                            onChanged: (bool value) {
                              Provider.of<HomeController>(context,
                                      listen: false)
                                  .setIsOutFlow(value);
                            },
                          ),
                        ),
                      ),
                      Text('Saída', style: AppTextStyle.regular18),
                    ],
                  ),

                  // Valor e identificação
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.35,
                        height: 55,
                        padding: const EdgeInsets.all(3),
                        constraints: const BoxConstraints(maxWidth: 225),
                        child: TextFormField(
                          style: AppTextStyle.light,
                          decoration: InputDecoration(
                            hintText: 'Valor',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entre com um valor válido';
                            }
                            try {
                              double.parse(value);
                            } catch (e) {
                              return 'Digite apenas números';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: size.width * 0.35,
                        height: 55,
                        padding: const EdgeInsets.all(3),
                        constraints: const BoxConstraints(maxWidth: 225),
                        child: TextFormField(
                          style: AppTextStyle.light,
                          decoration: InputDecoration(
                            hintText: 'Identificação',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entre com um valor válido';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  // Data e quantidade
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.35,
                        height: 55,
                        padding: const EdgeInsets.all(3),
                        constraints: const BoxConstraints(maxWidth: 225),
                        child: TextFormField(
                          style: AppTextStyle.light,
                          decoration: InputDecoration(
                            hintText: 'Data',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entre com um valor válido';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: size.width * 0.35,
                        height: 55,
                        padding: const EdgeInsets.all(3),
                        constraints: const BoxConstraints(maxWidth: 225),
                        child: TextFormField(
                          style: AppTextStyle.light,
                          decoration: InputDecoration(
                            hintText: 'Quantidade',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.stroke,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entre com um valor válido';
                            }
                            try {
                              int.parse(value);
                            } catch (e) {
                              return 'Digite apenas números';
                            }
                            return null;
                          },
                        ),
                      ),
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
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                              // Close Modal
                              closeModal();
                            }
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
                        onPressed: closeModal,
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
