import 'package:flutter/material.dart';
import 'package:practice/screens/calc/widgets/displayer.dart';
import 'package:practice/screens/calc/widgets/keyboart.dart';
import 'package:practice/utils/utils.dart';

import '../../calculator.dart';
import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _primaryDisplayerText = '';

  void buttonPressed(String id) {
    setState(
      () {
        if (id == ButtonId.ac) {
          _primaryDisplayerText = '';
        } else if (id == ButtonId.equal) {
          double result = calculate(_primaryDisplayerText);
          if (result != double.infinity) {
            _primaryDisplayerText = cleanResult(result);
          }
        } else if (id == ButtonId.backspace) {
          _primaryDisplayerText =
              _primaryDisplayerText.replaceAll(RegExp(r'.$'), '');
        } else if (id == ButtonId.binToDec) {
          _primaryDisplayerText = binaryToDecimal(_primaryDisplayerText);
        } else if (id == ButtonId.decToBin) {
          _primaryDisplayerText = decimalToBinary(_primaryDisplayerText);
        } else {
          _primaryDisplayerText += id;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Displayer(
                primaryText: _primaryDisplayerText,
              ),
            ),
            Expanded(
              flex: 2,
              child: Keyboard(buttonPressed),
            ),
          ],
        ),
      ),
    );
  }
}
