import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/tile.dart';

class ProfileList extends StatelessWidget {
  final List<Tile> tiles;
  const ProfileList({Key? key, required this.tiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: size.height * 0.33,
        child: ScrollConfiguration(
          behavior: ScrollBehavior().copyWith(overscroll: false),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: tiles.length,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(title: tiles[index], contentPadding: EdgeInsets.zero,),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
