import 'package:flutter/material.dart';

class PlayerFeatures extends StatefulWidget {
  final int duration;

  const PlayerFeatures({Key? key, required this.duration}) : super(key: key);

  @override
  State<PlayerFeatures> createState() => _PlayerFeaturesState();
}

class _PlayerFeaturesState extends State<PlayerFeatures> {
  int currentTime = 0;
  bool isPaused = false;


  String time(int value) {
    int minutes = (value / 60).floor();
    int secs = (value % 60);

    return ("$minutes:$secs");
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      children: [
        Slider(
          value: currentTime.toDouble(),
          min: 0,
          max: widget.duration.toDouble(),
          onChanged: (newValue) {
            setState(() {
              currentTime = newValue.round();
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              time(currentTime).padLeft(4, "0"),
              style: textTheme.subtitle2!.copyWith(color: Colors.white),
            ),
            Text(
              time(widget.duration).padLeft(4, "0"),
              style: textTheme.subtitle2!.copyWith(color: Colors.white),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(
                  Icons.fast_rewind,
                  size: 36,
                ),
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {
                  setState((){
                    isPaused = !isPaused;
                  });
                },
                icon: Icon(
                  !isPaused ? Icons.pause : Icons.play_arrow,
                  size: 36,
                ),
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(
                  Icons.fast_forward,
                  size: 36,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
