// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EntradaModel {
  final double? value;
  final String? identification;
  final String? date;
  final String? qty;
  final bool? isOutFlow;
  EntradaModel({
    this.value,
    this.identification,
    this.date,
    this.qty,
    this.isOutFlow,
  });

  EntradaModel copyWith({
    double? value,
    String? identification,
    String? date,
    String? qty,
    bool? isOutFlow,
  }) {
    return EntradaModel(
      value: value ?? this.value,
      identification: identification ?? this.identification,
      date: date ?? this.date,
      qty: qty ?? this.qty,
      isOutFlow: isOutFlow ?? this.isOutFlow,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'identification': identification,
      'date': date,
      'qty': qty,
      'isOutFlow': isOutFlow,
    };
  }

  factory EntradaModel.fromMap(Map<String, dynamic> map) {
    return EntradaModel(
      value: map['value']?.toDouble(),
      identification: map['identification'],
      date: map['date'],
      qty: map['qty'],
      isOutFlow: map['isOutFlow'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EntradaModel.fromJson(String source) =>
      EntradaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EntradaModel(value: $value, identification: $identification, date: $date, qty: $qty, isOutFlow: $isOutFlow)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EntradaModel &&
        other.value == value &&
        other.identification == identification &&
        other.date == date &&
        other.qty == qty &&
        other.isOutFlow == isOutFlow;
  }

  @override
  int get hashCode {
    return value.hashCode ^
        identification.hashCode ^
        date.hashCode ^
        qty.hashCode ^
        isOutFlow.hashCode;
  }
}
