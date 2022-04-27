import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF21283F),
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              // CustomTab(customIcon: "assets/icons/keypad.png", customText: "All"),
              // CustomTab(customIcon: "assets/icons/guitar.png", customText: "Instrumental"),
              // CustomTab(customIcon: "assets/icons/meditation.png", customText: "Ambient"),
              // CustomTab(customIcon: "assets/icons/infant.png", customText: "Child"),
              Tab(icon: ImageIcon(AssetImage("assets/icons/keypad.png")), text: "All",),
              Tab(icon: ImageIcon(AssetImage("assets/icons/guitar.png")), text: "Instrumental",),
              Tab(icon: ImageIcon(AssetImage("assets/icons/meditation.png")),text: "Ambient",),
              Tab(icon: ImageIcon(AssetImage("assets/icons/infant.png")), text: "Child",),
            ],
          ),
          title: Text(
            "Sleep",
            style: textTheme.headline4!.copyWith(fontSize: 24),
          ),
          backgroundColor: Color(0xFF21283F),
          elevation: 0,
        ),
        body: SizedBox(
          child: Placeholder(),
          height: size.height * 0.7,
        ),
        bottomNavigationBar: SizedBox(
          child: Placeholder(),
          height: size.height * 0.1,
        ),
      ),
    );
  }
}
