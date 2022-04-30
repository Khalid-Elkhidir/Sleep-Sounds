import '../domain/entities/song.dart';

import '../domain/entities/pack.dart';

class DataModel {
   static final List<Pack> _packs = [
    Pack(
      name: "Guitar Camp",
      category: "Instrumental",
      artwork: "assets/images/pack_covers/image3.png",
      time: 3,
      songs: _songs("Guitar Camp"),
    ),
    Pack(
      name: "Chill-hop",
      category: "Instrumental",
      artwork: "assets/images/pack_covers/image7.png",
      time: 4,
      songs: _songs("Chill-hop"),
    ),
    Pack(
      name: "Summer Night",
      category: "Ambient",
      artwork: "assets/images/pack_covers/image6.png",
      time: 3,
      songs: _songs("Summer Night"),
    ),
    Pack(
      name: "Awakening",
      category: "Ambient",
      artwork: "assets/images/pack_covers/image4.png",
      time: 4,
      songs: _songs("Awakening"),
    ),
    Pack(
      name: "Snow White",
      category: "Child",
      artwork: "assets/images/pack_covers/image1.png",
      time: 3,
      songs: _songs("Snow White"),
    ),
    Pack(
      name: "Space Travel",
      category: "Ambient",
      artwork: "assets/images/pack_covers/image2.png",
      time: 3,
      songs: _songs("Space Travel"),
    ),
    Pack(
      name: "Pack Name",
      category: "Child",
      artwork: "assets/images/pack_covers/image5.png",
      time: 3,
      songs: _songs("Pack Name"),
    ),
  ];

  static List<Song> _songs(String pack) {
    final List<Song> songs = [];
    for (int i = 0; i < 10; i++) {
      songs.add(
        Song(
          name: "Part ${i+1}",
          pack: pack,
          duration: 200,
        ),
      );
    }
    return songs;
  }

  static get packs => _packs;
}