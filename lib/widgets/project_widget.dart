import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/widgets/custom_textbox.dart';

class ProjectWidget extends StatefulWidget {
  final String projectText;
  final List<Widget> buttons;
  final List<Widget> shots;

  const ProjectWidget({
    Key? key,
    required this.projectText,
    this.buttons = const [],
    this.shots = const [],
  }) : super(key: key);

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  bool isGithubAvailable = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextbox(
          text: widget.projectText,
        ),
        const SizedBox(
          height: Constants.smallSpacer,
        ),
        SizedBox(
          width: size.width * Constants.screenWidthFactor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.shots,
          ),
        ),
        const SizedBox(
          height: Constants.xSmallSpacer,
        ),
        SizedBox(
          width: size.width * Constants.screenWidthFactor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.buttons,
          ),
        ),
        const SizedBox(
          height: Constants.xLargeSpacer,
        ),
      ],
    );
  }
}
