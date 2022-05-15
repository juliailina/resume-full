import 'package:flutter/material.dart';
import 'dart:html' as html;
import '../constants.dart';

class SocialIcon extends StatefulWidget {
  const SocialIcon({
    Key? key,
    required this.icon,
    required this.press,
    this.iconSize = 35,
    this.padding = 12,
  }) : super(key: key);

  final String icon;
  final Function() press;
  final double iconSize;
  final double padding;

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool isHovering = false;

  Color setColor() {
    if (isHovering) {
      return Colors.white;
    }
    return kMainTextColor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      child: InkWell(
        onTap: widget.press,
        onHover: (hovering) {
          setState(() => isHovering = hovering);
        },
        child: Image.asset(
          'assets/icons/${widget.icon}.png',
          color: setColor(),
          height: widget.iconSize,
        ),
      ),
    );
  }
}

void htmlOpenGitHub() {
  String url = 'https://github.com/juliailina/';
  html.window.open(url, 'GitHub');
}

void htmlOpenLinkedIn() {
  String url = 'https://linkedin.com/in/juliailina/';
  html.window.open(url, 'LinkedIn');
}

void htmlOpenTelegram() {
  String url = 'https://t.me/the_julz/';
  html.window.open(url, 'Telegram');
}

void htmlOpenGooglePlay() {
  String url = 'https://play.google.com/store/apps/';
  html.window.open(url, 'GooglePlay');
}

void htmlOpenAppStore() {
  String url = 'https://www.apple.com/app-store/';
  html.window.open(url, 'AppStore');
}
