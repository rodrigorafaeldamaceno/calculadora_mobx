import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_exemple/pages/calculadora/calculadora.dart';
import 'package:provider/provider.dart';

class ResultadoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Calculadora calculadora = Provider.of<Calculadora>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Observer(
          builder: (_) {
            return GestureDetector(
              onDoubleTap: () {
                calculadora.multiplicar(calculadora.resultado, 2);
              },
              child: Text(
                '${calculadora.resultado.toStringAsPrecision(3)}',
                style: TextStyle(fontSize: 50),
              ),
            );
          },
        ),
      ),
    );
  }
}
