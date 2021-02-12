import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compensa utilizar",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: "Big Shoulders Display",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'CALCULAR NOVAMENTE',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25,
                        fontFamily: "Big Shoulders Display",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Input(label: "Gasolina", ctrl: _gasCtrl),
          Input(label: "Alcool", ctrl: _alcCtrl),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(30),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(60),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'CALCULAR',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
