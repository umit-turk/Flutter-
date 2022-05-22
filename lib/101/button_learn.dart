import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }

              return Colors.white;
            })),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('data')),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {
              // servise istek at
              //sayfanın rengini duzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.red, padding: const EdgeInsets.all(20)), onPressed: () {}, child: const SizedBox(width: 200, child: const Text('data'))),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  'place Bid',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ))
        ],
      ),
    );
  }
}
