import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          color: Theme.of(context).errorColor,
          child: Text(
            'data',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).errorColor),
          )),
    );
  }
}

class ColorsItems {
  static final Color porchase = const Color(0xffEDE161);

  static final Color sulu = const Color(0xff9AED61);
}
