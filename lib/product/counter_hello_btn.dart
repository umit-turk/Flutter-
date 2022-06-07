import 'package:flutter/material.dart';

class CounterHelloBtn extends StatefulWidget {
  const CounterHelloBtn({Key? key}) : super(key: key);

  @override
  State<CounterHelloBtn> createState() => _CounterHelloBtnState();
}

class _CounterHelloBtnState extends State<CounterHelloBtn> {
  int _counterCustom = 0;
  final String _welcomeTitle = 'Merhaba';

  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _updateCounter();
      },
      child: Text('$_welcomeTitle $_counterCustom '),
    );
  }
}
