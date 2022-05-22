import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" * 500),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 200, minWidth: 50, minHeight: 50, maxHeight: 120),
            child: Text(
              'aa' * 100,
              maxLines: 2,
            ),
            padding: EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)],
      border: Border.all(width: 10, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)],
            border: Border.all(width: 10, color: Colors.white12));
}
