import 'package:flutter/material.dart';
import 'package:mobx_exemple/pages/calculadora/calculadora.dart';
import 'package:mobx_exemple/pages/calculadora/calculadora_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Calculadora>(
          create: (_) => Calculadora(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CalculadoraScreen(),
      ),
    );
  }
}
