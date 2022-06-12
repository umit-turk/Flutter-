import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";
  //constructor aninda deger alacaksa basina late ata
  late final bool _isOdd;

  @override
  //initstateden sonra calisir, drawing isleminden once calisisr
  //state degeri update edildiginde tekrar tekrar cagirilir
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
      print('b');
    }
  }

  @override
  void dispose() {
    //sayfadan ciktigi anda cagrilir
    super.dispose();
    _message = "";
    print('alo');
  }

  // mesaj tekse yanina tek yoksa cift yaz
  @override
  void initState() {
    //initstate islemi bittikten sonra build islemi oluyor
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += "Tek";
    } else {
      _message += "Cift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "a";
                });
              },
              child: Text(_message)),
    );
  }
}
