import 'package:calculadora/all_Controller.dart';
import 'package:calculadora/Utilities/constants.dart';
import 'package:calculadora/Utilities/FloatingActionList.dart';
import 'package:flutter/material.dart';
import '../enum/type.dart';
import 'package:calculadora/widgets/Button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final controller = All_Controller();

class HomeScreen extends StatelessWidget {
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
        body: Column(children: [
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, i) => Button(
                value: i,
                funcao: () => controller.alterarValor1(i.toDouble()),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, i) => Button(
                  value: i + 5,
                  funcao: () => controller.alterarValor1Plus(i.toDouble())),
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
                  backgroundColor: controller.tipo == type.values[i]
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  onPressed: () => controller.setOperacao(i),
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
                funcao: () => controller.alterarValor2(
                  i.toDouble(),
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
                value: i + 5,
                funcao: () => controller.alterarValor2Plus(
                  i.toDouble(),
                ),
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
                  switch (controller.tipo) {
                    case type.somar:
                      controller.resultado =
                          controller.valor1 + controller.valor2;
                      break;
                    case type.subtrair:
                      controller.resultado =
                          controller.valor1 - controller.valor2;
                      break;
                    case type.multiplicar:
                      controller.resultado =
                          controller.valor1 * controller.valor2;
                      break;
                    case type.dividir:
                      controller.resultado =
                          controller.valor1 / controller.valor2;
                      break;
                    case type.modulo:
                      controller.resultado =
                          controller.valor1 % controller.valor2;
                      break;
                  }
                  print(controller.resultado);
                },
              ),
              FloatingActionButton(
                backgroundColor: kActiveCardColour,
                child: Icon(Icons.clear),
                onPressed: controller.limpar,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Card(
                  child: ListTile(
                    leading: Text(
                      'operação : ',
                      style: kFinalTextStyle,
                    ),
                    title: Observer(
                      builder: (_) => Text(
                          "${controller.valor1.toString()}  ${controller.operacao}  ${controller.valor2.toString()}"),
                    ),
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
                    title: Observer(
                      builder: (_) => Text(controller.resultado.toString()),
                    ),
                    dense: true,
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
