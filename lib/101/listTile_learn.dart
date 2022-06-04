import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: RandomImage(),
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  onTap: () {},
                  subtitle: Text('How do you use your card'),
                  leading: Container(height: 100, width: 20, alignment: Alignment.topCenter, color: Colors.red, child: Icon(Icons.money)),
                  trailing: SizedBox(child: Icon(Icons.chevron_right)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
