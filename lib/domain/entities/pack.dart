import 'package:sleep_sounds/domain/entities/song.dart';

class Pack {
  String name;
  String category;
  String artwork;
  int time;
  List<Song> songs;

  Pack({
    required this.name,
    required this.category,
    required this.artwork,
    required this.time,
    required this.songs,
  });
}
