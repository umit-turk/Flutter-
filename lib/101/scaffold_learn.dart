import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold samples'),
      ),
      body: const Text('merhaba'),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
          height: 200,
          decoration: ProjectContainerDecoration(),
          child: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"), BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b')])),
    );
  }
}
