import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                CardContainer(),
                CardContainer(),
                CardContainer(),
              ],
            ),
          )),
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.15,
          )
        ],
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.15,
    );
  }
}
