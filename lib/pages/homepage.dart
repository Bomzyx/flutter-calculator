import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "../materials/buttons.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 103, 197, 227),
      ),
      body: Container(
        color: Color.fromARGB(255, 223, 245, 255),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    alignment: Alignment.center,
                    child: Text(
                      userInput,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    alignment: Alignment.center,
                    child: Text(
                      answer,
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Button(
                            buttontapped: () {
                              setState(() {
                                userInput = '';
                                answer = '0';
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.white,
                            textColor: Color.fromARGB(255, 55, 140, 231),
                          );
                        } else if (index == 1) {
                          return Button(
                            buttontapped: () {
                              setState(() {});
                            },
                            buttonText: buttons[index],
                            color: Colors.white,
                            textColor: Color.fromARGB(255, 55, 140, 231),
                          );
                        } else if (index == 2) {
                          return Button(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[index];
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.white,
                            textColor: Color.fromARGB(255, 55, 140, 231),
                          );
                        } else if (index == 3) {
                          return Button(
                            buttontapped: () {
                              setState(() {
                                userInput = userInput.substring(
                                    0, userInput.length - 1);
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.white,
                            textColor: Color.fromARGB(255, 55, 140, 231),
                          );
                        }
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
