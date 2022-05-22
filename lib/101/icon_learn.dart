import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: Theme.of(context).colorScheme.error,
            iconSize: iconSize.iconSmall2x,
          ),
          const SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColor.confetti,
            iconSize: iconSize.iconSmall,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColor.confetti,
            iconSize: iconSize.iconSmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  final double iconSmall2x = 80;
}

class IconColors {
  final Color confetti = const Color(0xffEDE161);
}
