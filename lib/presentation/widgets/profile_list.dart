import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/tile.dart';

class ProfileList extends StatelessWidget {
  final List<Tile> tiles;
  const ProfileList({Key? key, required this.tiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tiles.length,
      itemBuilder: (context, index) => ListTile(title: tiles[index],),
    );
  }
}
