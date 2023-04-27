import 'package:flutter/material.dart';
import 'package:resume/sections/education_section.dart';
import 'package:resume/sections/experience_section.dart';
import 'package:resume/sections/intro_section.dart';
import 'package:resume/sections/my_story_section.dart';
import 'package:resume/sections/other_work_section.dart';
import 'package:resume/sections/projects_section.dart';
import 'package:resume/sections/skills_section.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';

void main() {
  runApp(const YuliaCV());
}

class YuliaCV extends StatelessWidget {
  const YuliaCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: CustomTextStrings.webName,
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.appTheme,
      home: const YuliaCVHomePage(),
    );
  }
}

class YuliaCVHomePage extends StatefulWidget {
  const YuliaCVHomePage({Key? key}) : super(key: key);

  @override
  State<YuliaCVHomePage> createState() => _YuliaCVHomePageState();
}

class _YuliaCVHomePageState extends State<YuliaCVHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          IntroSection(),
          SkillsSection(),
          ExperienceSection(),
          EducationSection(),
          ProjectsSection(),
          OtherWorkSection(),
          MyStorySection(),
        ],
      ),
    );
  }
}
