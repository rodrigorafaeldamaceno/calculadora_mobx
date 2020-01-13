import 'package:mobx/mobx.dart';
part 'calculadora.g.dart';

class Calculadora = _CalculadoraBase with _$Calculadora;

abstract class _CalculadoraBase with Store {
  @observable
  double resultado = 0;

  @action
  double somar(double n1, double n2) => resultado = n1 + n2;
  @action
  double subtrair(double n1, double n2) => resultado = n1 - n2;
  @action
  double dividir(double n1, double n2) => resultado = n1 / n2;
  @action
  double multiplicar(double n1, double n2) => resultado = n1 * n2;
}
