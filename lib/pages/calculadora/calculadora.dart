import 'package:mobx/mobx.dart';
part 'calculadora.g.dart';

class Calculadora = _CalculadoraBase with _$Calculadora;

abstract class _CalculadoraBase with Store {
  @observable
  double resultado = 0;

  @action
  somar(double n1, double n2) => resultado = n1 + n2;
  @action
  subtrair(double n1, double n2) => resultado = n1 - n2;
  @action
  dividir(double n1, double n2) => resultado = n1 / n2;
  @action
  multiplicar(double n1, double n2) => resultado = n1 * n2;
}
