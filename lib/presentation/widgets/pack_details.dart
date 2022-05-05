import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_sounds/presentation/widgets/pack_card.dart';
import 'package:sleep_sounds/utils/constants.dart';

import '../../domain/entities/pack.dart';

class PackDetails extends StatelessWidget {
  final Pack pack;

  const PackDetails({Key? key, required this.pack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

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
                  icon: Icon(Icons.arrow_back_ios),
                  padding: EdgeInsets.only(left: 16),
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
                        ImageIcon(
                          AssetImage("assets/icons/sleeping.png"),
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text("Mood",
                            style: textTheme.subtitle1!.copyWith(
                                fontSize: 15,
                                letterSpacing: 0.15,
                                color: Colors.white)),
                        SizedBox(
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
                        ImageIcon(
                          AssetImage("assets/icons/sleep.png"),
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text("Dreams",
                            style: textTheme.subtitle1!.copyWith(
                                fontSize: 15,
                                letterSpacing: 0.15,
                                color: Colors.white)),
                        SizedBox(
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
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (context, scrollController) => Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 25),
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
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.play_arrow), Text("Play")],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.star), Text("Favorite")],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Container(
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
                              style: textTheme.subtitle2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                "List of Songs",
                                style: textTheme.subtitle1!.copyWith(color: Colors.white60),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 280,
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) => Column(
                                children: [
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    horizontalTitleGap: 6,
                                    leading: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                            decoration: ShapeDecoration(
                                              color: kPrimaryColor,
                                              shape: CircleBorder(),
                                            ),
                                            child: IconButton(
                                              padding: EdgeInsets.zero,
                                              color: Colors.white,
                                              onPressed: () {},
                                              icon: Icon(Icons.play_arrow),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    title: Text(
                                      "Name of song",
                                      style: textTheme.subtitle1!
                                          .copyWith(fontSize: 16, height: 0.5, color: Colors.white),
                                    ),
                                  ),
                                  Divider(color: kTertiaryColor),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
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
                                Expanded(child: PackCard(pack: pack)),
                                SizedBox(
                                  width: 16,
                                ),
                                Expanded(child: PackCard(pack: pack)),
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
          ),
        ],
      ),
    );
  }
}
