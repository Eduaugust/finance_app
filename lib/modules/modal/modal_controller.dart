import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/models/entrada_model.dart';
import '../home/home_controlle.dart';

class ModalController extends ValueNotifier<bool> {
  // faz o modal aparecer e desaparecer
  ModalController() : super(false);

  void close() {
    value = false;
  }

  void open() {
    value = !value;
  }
}

class FormController extends ChangeNotifier {
  EntradaModel model = EntradaModel(isOutFlow: false);
  ModalController modalController = ModalController();
  final formKey = GlobalKey<FormState>();

  String? validateValue(double value) =>
      value == 00 ? 'Insira uma valor maior que R\$0,00' : null;
  String? validateDate(String? value) =>
      value?.isEmpty ?? true ? 'A data deve ser preenchida' : null;
  String? validateIdentification(String? value) =>
      value?.isEmpty ?? true ? 'A indetificação deve ser preenchida' : null;
  String? validateQty(String? value) =>
      value?.isEmpty ?? true ? 'O Nº de vezes deve ser preenchida' : null;

  void onChanged(
      {double? value,
      String? date,
      String? identification,
      String? qty,
      bool? isOutFlow}) {
    model = model.copyWith(
        value: value,
        date: date,
        identification: identification,
        qty: qty,
        isOutFlow: isOutFlow);
    notifyListeners();
  }

  Future<void> saveEntrada() async {
    final instance = await SharedPreferences.getInstance();
    final entradas = instance.getStringList("entradas") ?? <String>[];
    entradas.add(model.toJson());
    await instance.setStringList('entradas', entradas);
    return;
  }

  Future<void> cadastrarEntrada(context) async {
    if (formKey.currentState!.validate()) {
      try {
        await saveEntrada();

        Navigator.pushReplacementNamed(context, '/home');
      } on Exception catch (e) {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Falha ao adicionar.')));
      }
      return;
    }
  }
}
