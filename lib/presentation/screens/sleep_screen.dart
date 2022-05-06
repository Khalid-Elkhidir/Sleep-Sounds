import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/sleep_instrumental.dart';

import '../widgets/custom_tab.dart';
import '../widgets/sleep_all.dart';
import '../widgets/sleep_ambient.dart';
import '../widgets/sleep_child.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({Key? key}) : super(key: key);

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (newIndex) => setState(() {
              currentIndex = newIndex;
            }),
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            tabs: [
              CustomTab(
                  customIcon: "assets/icons/keypad.png", customText: "All"),
              CustomTab(
                  customIcon: "assets/icons/guitar.png",
                  customText: "Instrumental"),
              CustomTab(
                  customIcon: "assets/icons/meditation.png",
                  customText: "Ambient"),
              CustomTab(
                  customIcon: "assets/icons/infant.png", customText: "Child"),
            ],
          ),
          title: Text(
            "Sleep",
            style: textTheme.headline4!.copyWith(fontSize: 24),
          ),
        ),
        body: currentIndex == 0
            ? SleepAll()
            : currentIndex == 1
                ? SleepInstrumental()
                : currentIndex == 2
                    ? SleepAmbient()
                    : SleepChild(),
      ),
    );
  }
}
