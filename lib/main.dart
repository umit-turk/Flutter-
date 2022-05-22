import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ScaffoldLearnView(),
    );
  }
}
