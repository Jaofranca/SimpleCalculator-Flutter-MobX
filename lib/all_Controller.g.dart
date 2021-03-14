// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_Controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$All_Controller on All_ControllerBase, Store {
  final _$valor1Atom = Atom(name: 'All_ControllerBase.valor1');

  @override
  double get valor1 {
    _$valor1Atom.reportRead();
    return super.valor1;
  }

  @override
  set valor1(double value) {
    _$valor1Atom.reportWrite(value, super.valor1, () {
      super.valor1 = value;
    });
  }

  final _$valor2Atom = Atom(name: 'All_ControllerBase.valor2');

  @override
  double get valor2 {
    _$valor2Atom.reportRead();
    return super.valor2;
  }

  @override
  set valor2(double value) {
    _$valor2Atom.reportWrite(value, super.valor2, () {
      super.valor2 = value;
    });
  }

  final _$operacaoAtom = Atom(name: 'All_ControllerBase.operacao');

  @override
  String get operacao {
    _$operacaoAtom.reportRead();
    return super.operacao;
  }

  @override
  set operacao(String value) {
    _$operacaoAtom.reportWrite(value, super.operacao, () {
      super.operacao = value;
    });
  }

  final _$resultadoAtom = Atom(name: 'All_ControllerBase.resultado');

  @override
  double get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$tipoAtom = Atom(name: 'All_ControllerBase.tipo');

  @override
  type get tipo {
    _$tipoAtom.reportRead();
    return super.tipo;
  }

  @override
  set tipo(type value) {
    _$tipoAtom.reportWrite(value, super.tipo, () {
      super.tipo = value;
    });
  }

  final _$All_ControllerBaseActionController =
      ActionController(name: 'All_ControllerBase');

  @override
  void alterarValor1(double valor) {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.alterarValor1');
    try {
      return super.alterarValor1(valor);
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alterarValor1Plus(double valor) {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.alterarValor1Plus');
    try {
      return super.alterarValor1Plus(valor);
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alterarValor2(double valor) {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.alterarValor2');
    try {
      return super.alterarValor2(valor);
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alterarValor2Plus(double valor) {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.alterarValor2Plus');
    try {
      return super.alterarValor2Plus(valor);
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alterarOperacao(String operacao) {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.alterarOperacao');
    try {
      return super.alterarOperacao(operacao);
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void limpar() {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.limpar');
    try {
      return super.limpar();
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperacao(int i) {
    final _$actionInfo = _$All_ControllerBaseActionController.startAction(
        name: 'All_ControllerBase.setOperacao');
    try {
      return super.setOperacao(i);
    } finally {
      _$All_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valor1: ${valor1},
valor2: ${valor2},
operacao: ${operacao},
resultado: ${resultado},
tipo: ${tipo}
    ''';
  }
}
