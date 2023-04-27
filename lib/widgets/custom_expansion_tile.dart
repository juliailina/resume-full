import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/styles.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String? description;
  final Widget? widget;
  final Color? expandedColor;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    this.description,
    this.widget,
    this.expandedColor,
  }) : super(key: key);

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _isExpanded
          ? const EdgeInsets.only(bottom: Constants.smallSpacer)
          : EdgeInsets.zero,
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.topLeft,
        tilePadding: _isExpanded
            ? const EdgeInsets.symmetric(
                vertical: Constants.xSmallSpacer,
                horizontal: Constants.smallSpacer,
              )
            : const EdgeInsets.symmetric(
                horizontal: Constants.smallSpacer,
              ),
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: Constants.mediumSpacer,
        ),
        textColor: CustomColors.beige,
        collapsedTextColor: CustomColors.beige,
        iconColor: CustomColors.beige,
        collapsedIconColor: CustomColors.blue,
        backgroundColor: widget.expandedColor ?? CustomColors.foregroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Constants.expansionTileRadius,
            ),
          ),
        ),
        onExpansionChanged: (value) {
          _isExpanded = value;
          setState(() {});
        },
        title: Text(
          widget.title,
          style: CustomTextStyles.body.copyWith(
            color: _isExpanded ? CustomColors.blue : CustomColors.beige,
          ),
        ),
        children: [
          Text(widget.description ?? ''),
          const SizedBox(
            height: Constants.smallSpacer,
          ),
          widget.widget ?? Container(),
        ],
      ),
    );
  }
}
