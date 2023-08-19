import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'Buttons/buttontext.dart';
import 'Buttons/buttontext2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Calculator",
    home: calculator(),
  ));
}

class calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return calculator2();
  }
}

class calculator2 extends State<calculator> {
  String equation = "";
  String result = "";
  String expression = "";
  String newresult = "";
  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "";
        result = "";
        newresult = " ";
      } else if (buttonText == "<") {
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        expression = equation;
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          String result2 = '${exp.evaluate(EvaluationType.REAL, cm)}';
          double? doubleValue = double.tryParse(result2);
          if (doubleValue != null) {
            result = doubleValue.toStringAsFixed(2);
            newresult = result;
          }
        } catch (e) {
          result = "Error";
        }
      } else if (buttonText == "%") {
        if (equation.isNotEmpty) {
          double? value2 = double.tryParse(newresult);
          if (value2 != null) {
            result = (value2 / 100).toString();
          }
        }
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget Notun_notun_button_row(
      String buttonText, double buttonHeight, Color buttonColor) {
    return NotunNotunButtonColumn(
      buttonText: buttonText,
      buttonHeight: buttonHeight,
      buttonColor: buttonColor,
      onPressed: buttonPressed,
    );
  }

  Widget Notun_notun_button(
      String buttonText, double buttonHeight, Color buttonColor) {
    return NotunNotunButton(
      buttonText: buttonText,
      buttonHeight: buttonHeight,
      buttonColor: buttonColor,
      onPressed: buttonPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 4, 30, 52),
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 4, 30, 52),
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "$equation",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 100),
                Text(
                  "$result",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 70),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                  color: const Color.fromARGB(255, 4, 30, 52),
                  child: Column(
                    children: [
                      Row(children: [
                        Notun_notun_button(
                            "<", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "C", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "X", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ]),
                      Row(children: [
                        Notun_notun_button(
                            "(", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            ")", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "%", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ]),
                      Row(children: [
                        Notun_notun_button(
                            "1", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "2", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "3", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ]),
                      Row(children: [
                        Notun_notun_button(
                            "4", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "5", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "6", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ]),
                      Row(children: [
                        Notun_notun_button(
                            "7", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "8", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "9", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ]),
                      Row(children: [
                        Notun_notun_button(
                            "0", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            "00", 84.9, Color.fromARGB(255, 6, 54, 97)),
                        Notun_notun_button(
                            ".", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ]),
                    ],
                  )),
              Container(
                color: const Color.fromARGB(255, 4, 30, 52),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Notun_notun_button_row(
                            "/", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ],
                    ),
                    Column(
                      children: [
                        Notun_notun_button_row(
                            "*", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ],
                    ),
                    Column(
                      children: [
                        Notun_notun_button_row(
                            "+", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ],
                    ),
                    Column(
                      children: [
                        Notun_notun_button_row(
                            "-", 84.9, Color.fromARGB(255, 6, 54, 97)),
                      ],
                    ),
                    Column(
                      children: [
                        Notun_notun_button_row(
                            "=", 169.8, Color.fromARGB(255, 6, 100, 183)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
