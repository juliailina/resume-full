import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants.dart';
// import 'dart:html' as html;
import 'package:universal_html/html.dart' as html;

class DownloadButton extends StatelessWidget {
  const DownloadButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showCV();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        primary: kGreenColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: const Text(
        'Download CV',
        style: kButtonTextStyle,
      ),
    );
  }
}

// void htmlDownloadCV() {
//   String url = 'https://yulia.codes/downloadcv';
//   html.window.open(url, 'CV');
// }
Future<void> showCV() async {
  var bytes = await rootBundle
      .load("assets/files/YuliaFlutterCV.pdf"); // location of your asset file

  final blob = html.Blob([bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, "_blank");
  html.Url.revokeObjectUrl(url);
}
