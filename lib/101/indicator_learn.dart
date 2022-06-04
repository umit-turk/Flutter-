import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CircularProgressIndicator()],
      ),
      body: Center(
        child: LinearProgressIndicator(color: Colors.white),
      ),
    );
  }
}

class CenterCircularRedIndicator extends StatelessWidget {
  CenterCircularRedIndicator({
    Key? key,
  }) : super(key: key);
  final redColor = Color.fromARGB(255, 109, 32, 27);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: redColor,
        strokeWidth: 10,
        value: 0.9,
        backgroundColor: Colors.white,
      ),
    );
  }
}
