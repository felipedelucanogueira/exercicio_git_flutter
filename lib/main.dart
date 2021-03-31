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
            height: MediaQuery.of(context).size.height * 0.19,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColorfulContainer(
                  cor: Colors.green,
                ),
                ColorfulContainer(
                  cor: Colors.yellowAccent,
                ),
                ColorfulContainer(
                  cor: Colors.red,
                ),
              ],
            ),
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
      margin: EdgeInsets.only(top: 35),
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.89,
      height: MediaQuery.of(context).size.height * 0.15,
    );
  }
}

class ColorfulContainer extends StatelessWidget {
  final Color cor;

  const ColorfulContainer({Key key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.height * 0.07,
    );
  }
}

