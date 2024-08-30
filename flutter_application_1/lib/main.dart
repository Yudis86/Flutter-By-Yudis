import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ios_widget.dart';
import 'package:flutter_application_1/Scafflod_widget.dart';
import 'package:flutter_application_1/dialog.dart';
import 'package:flutter_application_1/image_widget.dart';
import 'package:flutter_application_1/image_widget2.dart';
import 'package:flutter_application_1/row_column.dart';
import 'package:flutter_application_1/stack_position.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StackPosition());
  }
}
