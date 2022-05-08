import 'package:flutter/material.dart';
import 'package:sleep_sounds/utils/constants.dart';

import '../widgets/profile_container.dart';
import '../widgets/profile_list.dart';
import '../widgets/tile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: textTheme.headline4),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ProfileContainer(),
            ProfileList(
              tiles: tiles,
            ),
          ],
        ),
      ),
    );
  }

  List<Tile> tiles = const [
    Tile(
      children: [
        CustomTile(
          icon: "assets/icons/crown.png",
          title: "Go Premium",
          iconColor: kSystemTertiaryColor,
          last: true,
        ),
      ],
    ),
    Tile(
      children: [
        CustomTile(
          icon: "assets/icons/music_heart.png",
          title: "Favorites",
          iconColor: kSystemPrimaryColor,
          last: true,
        ),
      ],
    ),
    Tile(
      children: [
        CustomTile(
          icon: "assets/icons/document.png",
          title: "Privacy Policy",
          iconColor: kSystemSecondaryColor,
          last: false,
        ),
        CustomTile(
            icon: "assets/icons/licence.png",
            title: "Terms of Use",
            iconColor: kSystemSecondaryColor,
          last: true,),
      ],
    ),
    Tile(
      children: [
        CustomTile(
          icon: "assets/icons/star.png",
          title: "Rate Us",
          iconColor: Colors.pink,
          last: false,
        ),
        CustomTile(
          icon: "assets/icons/support.png",
          title: "Send Feedback",
          iconColor: Colors.pink,
          last: false,
        ),
        CustomTile(
          icon: "assets/icons/share.png",
          title: "Share",
          iconColor: Colors.pink,
          last: true,
        ),
      ],
    ),
  ];
}
