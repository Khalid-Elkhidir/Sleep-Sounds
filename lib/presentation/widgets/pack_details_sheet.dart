import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/screens/player_screen.dart';

import '../../data/data_model.dart';
import '../../domain/entities/pack.dart';
import '../../utils/constants.dart';
import 'pack_card.dart';
import 'pack_details_buttons.dart';

class PackDetailsSheet extends StatelessWidget {
  final Pack pack;
  final List<Pack> packs = List.from(DataModel.packs);

  PackDetailsSheet({Key? key, required this.pack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      minChildSize: 0.3,
      maxChildSize: 0.8,
      builder: (context, scrollController) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
            color: kBackgroundPrimaryColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  height: 2,
                  width: 30,
                  decoration: const ShapeDecoration(
                      color: kBackgroundTertiaryColor, shape: StadiumBorder()),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 25),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pack.name,
                      style: textTheme.headline4,
                    ),
                    Text(
                      "${pack.time} Hours • ${pack.category}",
                      style: textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              const Divider(),
              PackDetailsButtons(
                theme: theme,
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About this pack",
                      style: textTheme.subtitle1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer ",
                        style:
                            textTheme.subtitle2!.copyWith(letterSpacing: 0.1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: kBackgroundSecondaryColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          "List of Songs",
                          style: textTheme.subtitle1!
                              .copyWith(color: Colors.white60),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 580,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) => Column(
                          children: [
                            ListTile(
                              onTap: () => playSong(context, index),
                              contentPadding: EdgeInsets.zero,
                              horizontalTitleGap: 6,
                              leading: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${index + 1}".padLeft(2, "0"),
                                    style: textTheme.caption!
                                        .copyWith(height: 0.5),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 16),
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      alignment: Alignment.center,
                                      decoration: const ShapeDecoration(
                                        color: kBackgroundPrimaryColor,
                                        shape: CircleBorder(),
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        color: Colors.white,
                                        onPressed: () =>
                                            playSong(context, index),
                                        icon: const Icon(Icons.play_arrow),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              title: Text(
                                "Name of song",
                                style: textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                    height: 0.5,
                                    color: Colors.white),
                              ),
                            ),
                            const Divider(color: kBackgroundTertiaryColor),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Featured On",
                        style: textTheme.subtitle1,
                      ),
                    ),
                    SizedBox(
                      height: 220,
                      child: Row(
                        children: [
                          Expanded(
                              child: PackCard(
                            pack: getRandomPack(),
                            replaceRoute: true,
                          )),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: PackCard(
                                  pack: getRandomPack(), replaceRoute: true)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Pack getRandomPack() {
    Pack pack;
    while (true) {
      pack = packs[Random().nextInt(packs.length - 1)];
      if (pack.name != this.pack.name) {
        return pack;
      }
    }
  }

  void playSong(BuildContext context, int index) {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0, 1);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end)
              .chain(CurveTween(curve: Curves.ease));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => PlayerScreen(
          pack: pack,
          index: index,
        ),
      ),
    );
  }
}
