import 'package:calculator_app/components/my_buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 25,bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(userInput.toString(), style: TextStyle(color: Colors.white, fontSize: 30),),
                      const SizedBox(height: 10,),
                      Text(answer.toString(), style: TextStyle(color: Colors.white, fontSize: 55),),
                    ],
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButtons(
                          title: "AC",
                          color: Colors.orange,
                          onPress: (){
                            userInput = "";
                            answer = "";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "+/-",
                          color: Colors.orange,
                          onPress: (){
                            userInput += "+/-";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "%",
                          color: Colors.orange,
                          onPress: (){
                            userInput += "%";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "/",
                          color: Colors.orange,
                          onPress: (){
                            userInput += "/";
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(
                          title: "7",
                          onPress: (){
                            userInput += "7";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "8",
                          onPress: (){
                            userInput += "8";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "9",
                          onPress: (){
                            userInput += "9";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "x",
                          color: Colors.orange,
                          onPress: (){
                            userInput += "x";
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(
                          title: "4",
                          onPress: (){
                            userInput += "4";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "5",
                          onPress: (){
                            userInput += "5";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "6",
                          onPress: (){
                            userInput += "6";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "-",
                          color: Colors.orange,
                          onPress: (){
                            userInput += "-";
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(
                          title: "1",
                          onPress: (){
                            userInput += "1";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "2",
                          onPress: (){
                            userInput += "2";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "3",
                          onPress: (){
                            userInput += "3";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "+",
                          color: Colors.orange,
                          onPress: (){
                            userInput += "+";
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(
                            title: "0",
                          onPress: (){
                            userInput += "0";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: ".",
                          onPress: (){
                            userInput += ".";
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "DEL",
                          onPress: (){
                            userInput = userInput.substring(0,userInput.length-1);
                            setState(() {

                            });
                          },
                        ),
                        MyButtons(
                          title: "=",
                          color: Colors.orange,
                          onPress: (){
                            equalPress();
                            setState(() {

                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void equalPress(){

    String finalUserInput = userInput.replaceAll("x", "*");

    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

}