import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/pack_image_container.dart';
import 'package:sleep_sounds/utils/constants.dart';

import '../../domain/entities/pack.dart';
import '../widgets/player_features.dart';

class PlayerScreen extends StatelessWidget {
  final Pack pack;
  final int index;

  const PlayerScreen({Key? key, required this.pack, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            IconButton(
              color: kBackgroundTertiaryColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 44,
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            SizedBox(
              height: size.height * 0.3,
              child: PackImageContainer(pack: pack),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 8),
              child: Text(
                pack.name,
                style: textTheme.subtitle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 24),
              child: Text(
                "Track Name",
                style: textTheme.headline4,
              ),
            ),
            PlayerFeatures(duration: pack.songs[index].duration),
          ],
        ),
      ),
    );
  }
}
