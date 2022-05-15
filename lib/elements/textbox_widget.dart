import 'package:flutter/material.dart';
import '../constants.dart';

class TextBox extends StatelessWidget {
  TextBox({
    Key? key,
    this.text = '',
    width,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * .7,
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: kBodyTextStyle,
          ),
        ],
      ),
    );
  }
}
