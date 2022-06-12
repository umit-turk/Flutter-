import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/app_bar.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/color_learn.dart';
import 'package:flutter_application_1/101/column_row_learn.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';
import 'package:flutter_application_1/101/custom_widget_learn.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';
import 'package:flutter_application_1/101/indicator_learn.dart';
import 'package:flutter_application_1/101/listTile_learn.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/page_view_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/stack_learn.dart';
import 'package:flutter_application_1/101/statefull_learn.dart';
import 'package:flutter_application_1/101/statefull_life_cycle.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_field_learn.dart';
import 'package:flutter_application_1/101/text_learn_view.dart';
import 'package:flutter_application_1/demos/color_demos_view.dart';
import 'package:flutter_application_1/demos/note_demos_view.dart';
import 'package:flutter_application_1/demos/stack_demo_view.dart';

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
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        errorColor: ColorsItems.porchase,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          iconColor: Colors.red,
          labelStyle: TextStyle(color: Colors.lime),
          border: OutlineInputBorder(),
          floatingLabelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.red)),
        appBarTheme:
            AppBarTheme(centerTitle: true, backgroundColor: Colors.transparent, elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.light, toolbarTextStyle: const TextStyle(color: Colors.red)),
      ),
      home: ColorDemos(),
    );
  }
}
