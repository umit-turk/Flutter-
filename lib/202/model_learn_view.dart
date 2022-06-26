import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "a");

  @override
  void initState() {
    super.initState();

    final user1 = PostModel()
      ..userId = 1
      ..body = "üyt";
    user1.body = "hello";

    final user2 = PostModel2(1, 2, "a", "b");
    user2.body = "aaa";

    final user3 = PostModel3(1, 1, "title", "body");

    final user4 = PostModel4(userId: 1, id: 2, title: "title", body: "body");

    final user5 = PostModel5(userId: 1, id: 2, title: "title", body: "body");
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: "title", body: "body");

    final user7 = PostModel7();

    //service için en iyisi
    final user8 = PostModel8(body: "a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: "üyt");
          user9.updateBody("ümit");
        });
      }),
      appBar: AppBar(
        title: Text(user9.title ?? 'Not has any data'),
      ),
    );
  }
}
