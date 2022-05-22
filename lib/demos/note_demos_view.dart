import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = 'Create your first note';
  final _description = "Add a note";
  final _createNote = 'Create a Note';
  final _importNote = 'Import Note';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().happySmileWithouthPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                textAlign: TextAlign.left,
                title: _description * 10,
              ),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(
              onPressed: () {},
              child: Text(_importNote),
            ),
            SizedBox(
              height: ButtonHeight.buttonNormalHeight,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeight.buttonNormalHeight,
        child: Text(
          _createNote,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}

/* center text widget */
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({Key? key, this.textAlign = TextAlign.center, required this.title}) : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
