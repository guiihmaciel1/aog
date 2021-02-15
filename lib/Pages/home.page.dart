import 'package:aog/widgets/logo.widget.dart';
import 'package:aog/widgets/submit-form.dart';
import 'package:aog/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          _completed
              ? Success(reset: () {}, result: _resultText)
              : SubmitForm(
                  gasCtrl: _gasCtrl,
                  alcCtrl: _alcCtrl,
                  busy: false,
                  submitFunc: calculate),
        ],
      ),
    );
  }

  Future calculate() {
    double alc = double.parse(
          _alcCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
        ) /
        100;
    double gas = double.parse(
          _gasCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
        ) /
        100;
    double res = alc / gas;
    setState(() {
      _completed = false;
      _busy = true;
    });
  }
}
