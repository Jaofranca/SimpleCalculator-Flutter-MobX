import 'package:mobx/mobx.dart';
import 'enum/type.dart';
import 'Utilities/FloatingActionList.dart';

part 'all_Controller.g.dart';

class All_Controller = All_ControllerBase with _$All_Controller;

abstract class All_ControllerBase with Store {
  @observable
  double valor1 = 0;
  @observable
  double valor2 = 0;
  @observable
  String operacao = 'null';
  @observable
  double resultado = 0;
  @observable
  type tipo;

  @action
  void alterarValor1(double valor) {
    valor1 = valor;
  }

  @action
  void alterarValor1Plus(double valor) {
    valor1 = valor + 5;
  }

  @action
  void alterarValor2(double valor) {
    valor2 = valor;
  }

  @action
  void alterarValor2Plus(double valor) {
    valor2 = valor + 5;
  }

  @action
  void alterarOperacao(String operacao) {
    operacao = operacao;
  }

  @action
  void limpar() {
    valor1 = 0;
    valor2 = 0;
    operacao = 'null';
    resultado = 0;
  }

  @action
  void setOperacao(int i) {
    tipo = type.values[i];
    operacao = Floatingbuttons.operacoes[i];
  }
}
