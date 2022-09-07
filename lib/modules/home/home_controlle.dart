import 'dart:convert';

import 'package:finance_app/shared/models/entrada_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController with ChangeNotifier {
  final listaItemsNotifier = ValueNotifier<List<EntradaModel>?>(null);
  get listaItems => listaItemsNotifier.value;
  HomeController() {
    GetListaItems();
  }
  void GetListaItems() {
    getEntrances();
  }

  set listaItems(dynamic value) => listaItemsNotifier.value = value;
  Future<void> getEntrances() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? items = prefs.getStringList('entradas');
    if (items == null || items.length == 0) {
      listaItems = null;
      return;
    }
    List<EntradaModel> new_items = [];
    for (var i = 0; i < items.length; i++) {
      new_items.add(EntradaModel.fromJson(items[i]));
    }

    listaItems = new_items;
  }

  Future<void> deleteEntrance(int id) async {
    final prefs = await SharedPreferences.getInstance();
    // Get no shared_preferencs
    final List<String>? items = prefs.getStringList('entradas');

    if (items == null || id >= items.length) {
      listaItems = null;
      return;
    }
    items.removeAt(id);

    // Salvando a nova lista no shared_preferencs
    await prefs.setStringList('entradas', items);
    GetListaItems();
  }
}
