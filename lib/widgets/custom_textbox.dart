import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/styles.dart';

class CustomTextbox extends StatelessWidget {
  final String text;

  const CustomTextbox({
    Key? key,
    this.text = '',
    width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * Constants.screenWidthFactor,
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: CustomTextStyles.body,
          ),
        ],
      ),
    );
  }
}
