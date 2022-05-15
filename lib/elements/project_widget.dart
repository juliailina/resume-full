import 'package:flutter/material.dart';
import 'package:resume/elements/textbox_widget.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({
    Key? key,
    required this.projectText,
    this.buttons = const [],
    this.shots = const [],
  }) : super(key: key);

  final String projectText;
  final List<Widget> buttons;
  final List<Widget> shots;

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
        TextBox(
          text: widget.projectText,
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: size.width * .7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.shots,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: size.width * .7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.buttons,
          ),
        ),
      ],
    );
  }
}
