import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String _title;
  final String _text;
  static const double _hPad = 16.0;

  Paragraph(this._title, this._text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          child: Text(this._title, style: Theme.of(context).textTheme.title,)),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
          child: Text(this._text, style: Theme.of(context).textTheme.body1,))
      ],
    );
  }
}
