import 'package:calculadora/Utilities/constants.dart';
import 'package:calculadora/Utilities/FloatingActionList.dart';
import 'package:flutter/material.dart';

import '../enum/type.dart';
import 'package:calculadora/widgets/Button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double valor1;
  double valor2;
  String operacao;
  type tipo;
  double resultado;

  @override
  void initState() {
    valor1 = 0;
    operacao = 'null';
    valor2 = 0;
    resultado = 0;
    super.initState();
  }

  void limpar() {
    setState(() {
      valor1 = 0;
      valor2 = 0;
      operacao = 'null';
      resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculadora',
            style: kAppbarTextStyle,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, i) => Button(
                      value: i,
                      funcao: () {
                        setState(() {
                          valor1 = i.toDouble();
                        });
                      })),
            ),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, i) => Button(
                  value: i + 5,
                  funcao: () {
                    setState(() {
                      valor1 = (i + 5).toDouble();
                    });
                  },
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, i) => Padding(
                  padding: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    backgroundColor: tipo == type.values[i]
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    onPressed: () {
                      setState(() {
                        tipo = type.values[i];
                        operacao = Floatingbuttons.operacoes[i];
                      });
                    },
                    child: Text(
                      Floatingbuttons.operacoes[i],
                      style: kOperationsTextStyle,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, i) => Button(
                      value: i,
                      funcao: () {
                        setState(() {
                          valor2 = i.toDouble();
                        });
                      })),
            ),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, i) => Button(
                  value: i + 5,
                  funcao: () {
                    setState(() {
                      valor2 = (i + 5).toDouble();
                    });
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: kActiveCardColour,
                  child: Icon(Icons.check),
                  onPressed: () {
                    switch (tipo) {
                      case type.somar:
                        resultado = valor1 + valor2;
                        break;
                      case type.subtrair:
                        resultado = valor1 - valor2;
                        break;
                      case type.multiplicar:
                        resultado = valor1 * valor2;
                        break;
                      case type.dividir:
                        resultado = valor1 / valor2;
                        break;
                      case type.modulo:
                        resultado = valor1 % valor2;
                        break;
                    }
                    setState(() {});
                    print(resultado);
                  },
                ),
                FloatingActionButton(
                    backgroundColor: kActiveCardColour,
                    child: Icon(Icons.clear),
                    onPressed: () {
                      limpar();
                    }),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                child: ListTile(
                  leading: Text(
                    'operação : ',
                    style: kFinalTextStyle,
                  ),
                  title: Text(
                      "${valor1.toString()}  ${operacao}  ${valor2.toString()}"),
                  dense: true,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                child: ListTile(
                  leading: Text(
                    'resultado: ',
                    style: kFinalTextStyle,
                  ),
                  title: Text(resultado.toString()),
                  dense: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
