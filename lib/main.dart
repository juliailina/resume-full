import 'package:flutter/material.dart';
import 'package:resume/sections/education.dart';
import 'package:resume/sections/experience.dart';
import 'package:resume/sections/intro.dart';
import 'package:resume/sections/mystory.dart';
import 'package:resume/sections/otherwork.dart';
import 'package:resume/sections/projects.dart';
import 'package:resume/sections/skills.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yulia CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'JetBrainsMono',
        textTheme: const TextTheme(
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: kMainTextColor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: const [
          Intro(),
          Skills(),
          Experience(),
          Education(),
          Projects(),
          OtherWork(),
          MyStory(),
        ],
      ),
    );
  }
}
