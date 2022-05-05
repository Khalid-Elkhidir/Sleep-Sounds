import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/screens/composer_screen.dart';
import 'package:sleep_sounds/presentation/screens/profile_screen.dart';
import 'package:sleep_sounds/presentation/screens/sleep_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: currentIndex == 0 ? SleepScreen() : currentIndex == 1 ? ComposerScreen() : ProfileScreen(),
        bottomNavigationBar: SizedBox(
          height: size.height * 0.1,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (newIndex) => setState((){currentIndex = newIndex;}),
            items: const [
              BottomNavigationBarItem(
                label: "Sleep",
                icon: ImageIcon(
                  AssetImage("assets/images/bottom_navigation_bar/moon.png"),
                ),
              ),
              BottomNavigationBarItem(
                label: "Composer",
                icon: ImageIcon(
                  AssetImage(
                      "assets/images/bottom_navigation_bar/musical_note.png"),
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: ImageIcon(
                  AssetImage("assets/images/bottom_navigation_bar/user.png"),
                ),
              ),
            ],
          ),
    ));
  }
}
