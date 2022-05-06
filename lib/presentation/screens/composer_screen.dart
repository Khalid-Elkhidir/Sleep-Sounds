import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/composer_card.dart';

import '../widgets/composer_section.dart';

class ComposerScreen extends StatelessWidget {
  const ComposerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Composer",
          style: textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            ComposerSection(
              title: "Child",
              description: "Quickly stabilize your baby’s emotions",
              cards: [
                ComposerCard(
                  icon: "assets/icons/girl.png",
                  title: "Female voice",
                ),
                ComposerCard(
                  icon: "assets/icons/ultrasound.png",
                  title: "White Noize",
                ),
                ComposerCard(
                  icon: "assets/icons/lullaby.png",
                  title: "Lullaby",
                ),
              ],
            ),
            ComposerSection(
              title: "Nature",
              description: "It will allow you to merge with nature",
              cards: [
                ComposerCard(
                  icon: "assets/icons/rainwater_catchment.png",
                  title: "Rain",
                ),
                ComposerCard(
                  icon: "assets/icons/forest.png",
                  title: "Forest",
                ),
                ComposerCard(
                  icon: "assets/icons/waves.png",
                  title: "Ocean",
                ),
                ComposerCard(
                  icon: "assets/icons/fire.png",
                  title: "Fire",
                ),
                ComposerCard(
                  icon: "assets/icons/stormy_night.png",
                  title: "Storm",
                ),
              ],
            ),
            ComposerSection(
              title: "Animals",
              description: "Animal voices will improve your sleep",
              cards: [
                ComposerCard(
                  icon: "assets/icons/bird.png",
                  title: "Birds",
                ),
                ComposerCard(
                  icon: "assets/icons/cat.png",
                  title: "Cats",
                ),
                ComposerCard(
                  icon: "assets/icons/frog.png",
                  title: "Frogs",
                ),
              ],
            ),
            ComposerSection(
              title: "Industrial",
              description:
                  "These sounds will help you forget about the silence",
              cards: [
                ComposerCard(
                  icon: "assets/icons/train.png",
                  title: "Train",
                ),
                ComposerCard(
                  icon: "assets/icons/airplane.png",
                  title: "Aircraft",
                ),
                ComposerCard(
                  icon: "assets/icons/city.png",
                  title: "City",
                ),
                ComposerCard(
                  icon: "assets/icons/coffee.png",
                  title: "Caffe",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
