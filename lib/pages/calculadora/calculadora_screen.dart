import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_exemple/pages/calculadora/calculadora.dart';
import 'package:mobx_exemple/pages/calculadora/resultado_screen.dart';
import 'package:provider/provider.dart';

class CalculadoraScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Calculadora calculadora = Provider.of<Calculadora>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text('Informe os numeros', style: TextStyle(fontSize: 30)),
                SizedBox(height: 10),
                _buildTextField(label: 'N1', controller: n1Controller),
                _buildTextField(label: 'N2', controller: n2Controller),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        calculadora.somar(
                          double.parse(n1Controller.text),
                          double.parse(n2Controller.text),
                        );
                      },
                      child: Text('Somar'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        calculadora.subtrair(
                          double.parse(n1Controller.text),
                          double.parse(n2Controller.text),
                        );
                      },
                      child: Text('Subtrair'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        calculadora.dividir(
                          double.parse(n1Controller.text),
                          double.parse(n2Controller.text),
                        );
                      },
                      child: Text('Dividir'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        calculadora.multiplicar(
                          double.parse(n1Controller.text),
                          double.parse(n2Controller.text),
                        );
                      },
                      child: Text('Multiplicar'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Observer(
                  builder: (_) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ResultadoScreen()),
                        );
                      },
                      child: Text(
                        'Resultado: ${calculadora.resultado.toStringAsPrecision(3)}',
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({String label, TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
    );
  }
}
