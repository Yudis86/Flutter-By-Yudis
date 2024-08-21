import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IosWidget extends StatelessWidget {
  const IosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      margin: EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        children: [
          AppBar(title: Text('contoh cupertino')),
          CupertinoButton(child: Text("Contoh Button"), onPressed: () {}),
          CupertinoActivityIndicator(),
        ],
      ),
    ));
  }
}
