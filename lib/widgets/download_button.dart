import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/styles.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/utils/pdf_opener.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PDFOpener().openCV();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(
          Constants.smallSpacer,
        ),
        backgroundColor: CustomColors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Constants.downloadButtonRadius,
          ),
        ),
      ),
      child: const Text(
        CustomTextStrings.downloadCV,
        style: CustomTextStyles.button,
      ),
    );
  }
}
