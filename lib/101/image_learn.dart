import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath = "https://www.clipartmax.com/png/middle/64-644516_very-sad-emoji-sad-emoji.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 300,
            child: PngImage(name: ImageItems().happySmileWithouthPath),
          ),
          Image.network(
            _imagePath,
            errorBuilder: (context, error, stackTrace) => PngImage(name: ImageItems().happySmileWithouthPath),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple-book.png";
  final String happySmile = "assets/png/happy-smile.png";
  final String happySmileWithouthPath = "happy-smile";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
