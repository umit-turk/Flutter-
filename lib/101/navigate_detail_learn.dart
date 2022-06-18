import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({Key? key, this.isOkay = false}) : super(key: key);
  final bool isOkay;

  @override
  State<NavigateDetailLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /* ModalRoute.of(context).settings.arguments */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkay);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOkay ? Colors.red : Colors.green,
            ),
            label: widget.isOkay ? Text("Red") : Text('Onayla')),
      ),
    );
  }
}
