import 'package:app_imc/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  var controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App IMC',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/fit-256.png'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.pesoController,
              decoration: InputDecoration(
                  labelText: 'Peso',
                  labelStyle: TextStyle(fontSize: 18),
                  suffix: Text("kg")),
              style: TextStyle(fontSize: 28),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.alturaController,
              decoration: InputDecoration(
                labelText: 'Altura',
                labelStyle: TextStyle(fontSize: 18),
                suffix: Text("cm"),
              ),
              style: TextStyle(fontSize: 28),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.3,
                      1,
                    ],
                    colors: [
                      Colors.blue[400],
                      Colors.blue[600],
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "CALCULAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  textColor: Colors.white,
                  onPressed: controller.obterResultado,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Observer(
              builder: (BuildContext context) {
                return controller.resultado;
              },
            )
          ],
        ),
      ),
    );
  }
}
