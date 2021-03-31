import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children:[Expanded(child: Container()),
        Container(color: Colors.blue,
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.15,
        )
      ],
    ),);
  }
}

