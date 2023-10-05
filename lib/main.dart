import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Demo(),
  ));
}

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String display = "";
  double firstNum = 0;
  double secondNum = 0;
  int cnt = 0;

  void comm(String val) {
    setState(() {
      display = display + val;
    });
  }

  void comm2(String s) {
    setState(() {
      double temp = firstNum;
      firstNum = double.parse(display);
      if (cnt == 1111) {
        firstNum = firstNum + temp;
      } else if (cnt == 2222) {
        firstNum = temp - firstNum;
      } else if (cnt == 3333) {
        firstNum = temp * firstNum;
      } else if (cnt == 4444) {
        firstNum = temp / firstNum;
      } else if (cnt == 5555) {
        firstNum = temp * firstNum / 100;
      }
      if (s == "+") {
        cnt = 1111;
      } else if (s == "-") {
        cnt = 2222;
      } else if (s == '*') {
        cnt = 3333;
      } else if (s == "/") {
        cnt = 4444;
      } else if (s == "%") {
        cnt = 5555;
      }

      display = "";
    });
  }

  void comm3() {
    display = "";
  }

  void comm4() {
    if (display.isNotEmpty) {
      display = display.substring(0, display.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation;
    print("}}}}}}}}$isPortrait");
    if (isPortrait == Orientation.portrait) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
              alignment: Alignment.bottomRight,
              child: Text(
                display,
                style: TextStyle(fontSize: 38, color: Colors.white),
              ),
              color: Colors.black,
            )),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              firstNum = 0;
                              secondNum = 0;
                              display = "";
                              cnt = 0;
                              setState(() {
                                comm3();
                              });
                            },
                            child: Text(
                              "C",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm4();
                              });
                            },
                            child: Text(
                              "<",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2('%');
                              });
                            },
                            child: Text(
                              "%",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              comm("7");
                            },
                            child: Text(
                              "7",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("8");
                              });
                            },
                            child: Text(
                              "8",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("9");
                              });
                            },
                            child: Text(
                              "9",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("*");
                              });
                            },
                            child: Text(
                              "x",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("4");
                              });
                            },
                            child: Text(
                              "4",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("5");
                              });
                            },
                            child: Text(
                              "5",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("6");
                              });
                            },
                            child: Text(
                              "6",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("-");
                              });
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("1");
                              });
                            },
                            child: Text(
                              "1",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("2");
                              });
                            },
                            child: Text(
                              "2",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("3");
                              });
                            },
                            child: Text(
                              "3",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              comm2("+");
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        margin: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(25),
                              shape: StadiumBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                // comm("0");
                                if (!display.contains('0')) {
                                  if (!display.isEmpty) {
                                    display = '0';
                                  }
                                } else {
                                  display = '0';
                                }
                              });
                            },
                            child: Text(
                              "0",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              // comm(".");
                              setState(() {
                                if (!display.contains('.')) {
                                  if (display.isEmpty) {
                                    display = display + '0.';
                                  } else {
                                    display = display + '.';
                                  }
                                }
                              });
                            },
                            child: Text(
                              ".",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              padding: EdgeInsets.all(30),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                secondNum = double.parse(display);
                                display = "";
                                if (cnt == 1111) {
                                  display = "${firstNum + secondNum}";
                                } else if (cnt == 2222) {
                                  display = "${firstNum - secondNum}";
                                } else if (cnt == 3333) {
                                  display = "${firstNum * secondNum}";
                                } else if (cnt == 4444) {
                                  display = "${firstNum / secondNum}";
                                } else if (cnt == 5555) {
                                  display = "${firstNum * secondNum / 100}";
                                }
                                if (display.endsWith('.0')) {
                                  display =
                                      display.substring(0, display.length - 2);
                                }
                                if (display.indexOf('.') <=
                                    display.length - 1) {
                                  display = display.substring(
                                      0, display.indexOf('.') + 2);
                                }
                              });
                            },
                            child: Text(
                              "=",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
              ],
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
              alignment: Alignment.bottomRight,
              child: Text(
                display,
                style: TextStyle(fontSize: 38, color: Colors.white),
              ),
              color: Colors.black,
            )),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              firstNum = 0;
                              secondNum = 0;
                              display = "";
                              cnt = 0;
                              setState(() {
                                comm3();
                              });
                            },
                            child: Text(
                              "C",
                              style: TextStyle(color: Colors.black),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm4();
                              });
                            },
                            child: Text(
                              "<",
                              style: TextStyle(color: Colors.black),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2('%');
                              });
                            },
                            child: Text(
                              "%",
                              style: TextStyle(color: Colors.black),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("7");
                              });
                            },
                            child: Text(
                              "7",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("8");
                              });
                            },
                            child: Text(
                              "8",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("9");
                              });
                            },
                            child: Text(
                              "9",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("*");
                              });
                            },
                            child: Text(
                              "x",
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("4");
                              });
                            },
                            child: Text(
                              "4",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("5");
                              });
                            },
                            child: Text(
                              "5",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("6");
                              });
                            },
                            child: Text(
                              "6",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("-");
                              });
                            },
                            child: Text(
                              "-",
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("1");
                              });
                            },
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("2");
                              });
                            },
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("3");
                              });
                            },
                            child: Text(
                              "3",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("+");
                              });
                            },
                            child: Text(
                              "+",
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm2("/");
                              });
                            },
                            child: Text(
                              "÷",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )))),
                Expanded(
                    flex: 2,
                    child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        margin: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              padding: EdgeInsets.all(25),
                              shape: StadiumBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm("0");
                              });
                            },
                            child: Text(
                              "0",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF424242),
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                comm(".");
                              });
                            },
                            child: Text(
                              ".",
                              style: TextStyle(color: Colors.white),
                            )))),
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: CircleBorder(side: BorderSide()),
                            ),
                            onPressed: () {
                              setState(() {
                                secondNum = double.parse(display);
                                display = "";
                                if (cnt == 1111) {
                                  display = "${firstNum + secondNum}";
                                } else if (cnt == 2222) {
                                  display = "${firstNum - secondNum}";
                                } else if (cnt == 3333) {
                                  display = "${firstNum * secondNum}";
                                } else if (cnt == 4444) {
                                  display = "${firstNum / secondNum}";
                                } else if (cnt == 5555) {
                                  display = "${firstNum * secondNum / 100}";
                                }
                                // if (display.endsWith('.0')) {
                                //   display =
                                //       display.substring(0, display.length - 2);
                                // }
                              });
                            },
                            child: Text(
                              "=",
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            ),
          ],
        ),
      );
    }
  }
}
