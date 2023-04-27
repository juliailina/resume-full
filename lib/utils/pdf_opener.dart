import 'package:flutter/services.dart';
import 'package:universal_html/html.dart' as html;

class PDFOpener {
  Future<void> openCV() async {
    var bytes = await rootBundle.load("assets/files/YuliaFlutterCV.pdf");
    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    html.window.open(url, "_blank");
    html.Url.revokeObjectUrl(url);
  }
}
