import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<MyApp> {
  double result = 0.0;
  double firstValue, secondValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(200, 220, 221, 1.0),
        appBar: AppBar(
          title: Text(
            "Calculator",
            style: TextStyle(fontSize: 30),
          ),
          elevation: 10,
          backgroundColor: Color.fromRGBO(218, 76, 81, 1.0),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //enter numbers

              Text(
                "Enter The Numbers:",
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(9, 13, 36, 1.0)),
              ),

              //sizedbox

              SizedBox(
                height: 5,
              ),

              //container to margin text fields

              Container(
                margin: EdgeInsets.all(30),

                //ROW text fields

                child: Row(
                  children: [
                    //first number

                    Expanded(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(14, 68, 104, 1.0),
                          ),
                          decoration: InputDecoration(
                            hintText: "First Number...",
                          ),
                          onChanged: (value) {
                            setState(() {
                              firstValue = double.parse(value);
                            });
                          }),
                    ),

                    //sizedbox

                    SizedBox(
                      width: 20,
                    ),

                    //second number

                    Expanded(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(14, 68, 104, 1.0),
                          ),
                          decoration:
                              InputDecoration(hintText: "Second Number..."),
                          onChanged: (value) {
                            setState(() {
                              secondValue = double.parse(value);
                            });
                          }),
                    )
                  ],
                ),
              ),

              //sizedbox

              SizedBox(
                height: 5,
              ),

              //choose op

              Text(
                "Choose The Operation:",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(9, 13, 36, 1.0),
                ),
              ),

              //sizedbox

              SizedBox(
                height: 20,
              ),

              //ROW for + and - operators

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // + button

                  RaisedButton(
                    color: Color.fromRGBO(129, 183, 184, 1.0),
                    elevation: 5,
                    splashColor: Color.fromRGBO(218, 76, 81, 1.0),
                    child: Text(
                      "+",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        result = firstValue + secondValue;
                      });
                    },
                  ),

                  //sizedbox

                  SizedBox(
                    width: 20,
                  ),

                  // - button

                  RaisedButton(
                    color: Color.fromRGBO(129, 183, 184, 1.0),
                    elevation: 5,
                    splashColor: Color.fromRGBO(218, 76, 81, 1.0),
                    child: Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        result = firstValue - secondValue;
                      });
                    },
                  )
                ],
              ),

              //sizedbox

              SizedBox(
                height: 20,
              ),

              //ROW for * and / operators

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // * button

                  RaisedButton(
                    color: Color.fromRGBO(129, 183, 184, 1.0),
                    elevation: 5,
                    splashColor: Color.fromRGBO(218, 76, 81, 1.0),
                    child: Text(
                      "*",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        result = firstValue * secondValue;
                      });
                    },
                  ),

                  //sizedbox

                  SizedBox(
                    width: 20,
                  ),

                  // / button

                  RaisedButton(
                    color: Color.fromRGBO(129, 183, 184, 1.0),
                    elevation: 5,
                    splashColor: Color.fromRGBO(218, 76, 81, 1.0),
                    child: Text(
                      "/",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        result = firstValue / secondValue;
                      });
                    },
                  )
                ],
              ),

              //sizedbox

              SizedBox(
                height: 20,
              ),

              //result text

              Text(
                "Result:",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(9, 13, 36, 1.0),
                ),
              ),

              //sizedbox

              SizedBox(
                height: 20,
              ),

              //result box

              Container(
                  color: Color.fromRGBO(140, 154, 154, 1.0),
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "$result",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromRGBO(9, 13, 36, 1.0),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
