// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Calculadora on _CalculadoraBase, Store {
  final _$resultadoAtom = Atom(name: '_CalculadoraBase.resultado');

  @override
  double get resultado {
    _$resultadoAtom.context.enforceReadPolicy(_$resultadoAtom);
    _$resultadoAtom.reportObserved();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.context.conditionallyRunInAction(() {
      super.resultado = value;
      _$resultadoAtom.reportChanged();
    }, _$resultadoAtom, name: '${_$resultadoAtom.name}_set');
  }

  final _$_CalculadoraBaseActionController =
      ActionController(name: '_CalculadoraBase');

  @override
  double somar(double n1, double n2) {
    final _$actionInfo = _$_CalculadoraBaseActionController.startAction();
    try {
      return super.somar(n1, n2);
    } finally {
      _$_CalculadoraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double subtrair(double n1, double n2) {
    final _$actionInfo = _$_CalculadoraBaseActionController.startAction();
    try {
      return super.subtrair(n1, n2);
    } finally {
      _$_CalculadoraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double dividir(double n1, double n2) {
    final _$actionInfo = _$_CalculadoraBaseActionController.startAction();
    try {
      return super.dividir(n1, n2);
    } finally {
      _$_CalculadoraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double multiplicar(double n1, double n2) {
    final _$actionInfo = _$_CalculadoraBaseActionController.startAction();
    try {
      return super.multiplicar(n1, n2);
    } finally {
      _$_CalculadoraBaseActionController.endAction(_$actionInfo);
    }
  }
}
