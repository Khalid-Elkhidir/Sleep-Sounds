import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/pack_details_sheet.dart';

import '../../domain/entities/pack.dart';

class PackDetailsScreen extends StatelessWidget {
  final Pack pack;

  const PackDetailsScreen({Key? key, required this.pack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.srgbToLinearGamma(),
                  image: AssetImage("assets/images/packs_background.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: const Icon(Icons.arrow_back_ios),
                  padding: const EdgeInsets.only(left: 16),
                  color: Colors.white,
                ),
                SizedBox(
                  height: size.height * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const ImageIcon(
                          AssetImage("assets/icons/sleeping.png"),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text("Mood",
                            style: textTheme.subtitle1!.copyWith(
                                fontSize: 15,
                                letterSpacing: 0.15,
                                color: Colors.white)),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Lighthearted",
                          style: textTheme.headline4!
                              .copyWith(fontSize: 20, letterSpacing: 0.15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const ImageIcon(
                          AssetImage("assets/icons/sleep.png"),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text("Dreams",
                            style: textTheme.subtitle1!.copyWith(
                                fontSize: 15,
                                letterSpacing: 0.15,
                                color: Colors.white)),
                        const SizedBox(
                          height: 8,
                        ),
                        Text("Daydreams",
                            style: textTheme.headline4!
                                .copyWith(fontSize: 20, letterSpacing: 0.15)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          PackDetailsSheet(pack: pack),
        ],
      ),
    );
  }
}
