import 'package:calculadora/Utilities/constants.dart';
import 'package:flutter/material.dart';
import '../Utilities/Functions.dart';
import '../enum/type.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _textController1 = TextEditingController();
  var _textController2 = TextEditingController();
  type tipo;
  var resultado;

  @override
  void initState() {
    resultado = 0;
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _textController1.dispose();
    _textController2.dispose();
    super.dispose();
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
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Primeiro Valor",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        )),
                    keyboardType: TextInputType.number,
                    controller: _textController1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: tipo == type.somar
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      onPressed: () {
                        setState(() {
                          tipo = type.somar;
                        });
                      },
                      child: Text(
                        '+',
                        style: kOperationsTextStyle,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: tipo == type.subtrair
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      onPressed: () {
                        setState(() {
                          tipo = type.subtrair;
                        });
                      },
                      child: Text(
                        '-',
                        style: kOperationsTextStyle,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: tipo == type.multiplicar
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      onPressed: () {
                        setState(() {
                          tipo = type.multiplicar;
                        });
                      },
                      child: Text(
                        '*',
                        style: kOperationsTextStyle,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: tipo == type.dividir
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      onPressed: () {
                        setState(() {
                          tipo = type.dividir;
                        });
                      },
                      child: Text(
                        '/',
                        style: kOperationsTextStyle,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Segundo Valor",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        )),
                    keyboardType: TextInputType.number,
                    controller: _textController2,
                  ),
                ),
                FloatingActionButton(
                    backgroundColor: kActiveCardColour,
                    child: Icon(Icons.check),
                    onPressed: () {
                      switch (tipo) {
                        case type.somar:
                          resultado = Functions.somar(
                              double.parse(_textController1.text),
                              double.parse(_textController2.text));
                          break;
                        case type.subtrair:
                          resultado = Functions.subtrair(
                              double.parse(_textController1.text),
                              double.parse(_textController2.text));
                          break;
                        case type.multiplicar:
                          resultado = Functions.multiplicar(
                              double.parse(_textController1.text),
                              double.parse(_textController2.text));
                          break;
                        case type.dividir:
                          resultado = Functions.dividir(
                              double.parse(_textController1.text),
                              double.parse(_textController2.text));
                          break;
                      }
                      setState(() {});
                      print(resultado);
                    }),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                    child: ListTile(
                      leading: Text('Resultado: '),
                      title: Text(resultado.toString()),
                      dense: true,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
