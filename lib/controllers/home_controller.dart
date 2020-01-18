import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  var pesoController = MaskedTextController(mask: '000.00');

  @observable
  var alturaController = MaskedTextController(mask: '000');

  @observable
  Container resultado = Container();

  @action
  obterResultado() {
    var imc = calculaImc();
    if (imc == 0.0) return Container();

    var status = '';
    Color corStatus = Colors.black;

    if (imc >= 40) {
      status = 'Obesidade grau 3';
      corStatus = Colors.red;
    } else if (imc >= 35) {
      status = 'Obesidade grau 2';
      corStatus = Colors.red;
    } else if (imc >= 30) {
      status = 'Obesidade grau 1';
      corStatus = Colors.red;
    } else if (imc >= 25) {
      status = 'Sobrepeso';
      corStatus = Colors.orange;
    } else if (imc >= 18.5) {
      status = 'Peso Normal';
      corStatus = Colors.green[400];
    } else if (imc < 18.5) {
      status = 'Abaixo do Peso';
      corStatus = Colors.red[400];
    }

    resultado = retornaWidgetFinal(imc, status, corStatus);
  }

  retornaWidgetFinal(double imc, String status, Color cor) {
    return Container(
      width: 600,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            imc.toStringAsFixed(2),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 35,
            ),
          ),
          Text(
            status,
            style: TextStyle(
              color: cor,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  double calculaImc() {
    var pesoStr = pesoController.text;
    var alturaStr = alturaController.text;

    if (pesoStr == null ||
        pesoStr == '' ||
        alturaStr == null ||
        alturaStr == '') return 0;

    var peso = double.parse(pesoStr);
    var altura = double.parse(alturaStr) / 100;

    if (peso == 0 || altura == 0) {
      return 0;
    }

    return peso / (altura * altura);
  }
}
