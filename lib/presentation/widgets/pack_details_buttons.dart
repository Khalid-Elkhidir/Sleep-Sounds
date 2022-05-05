import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'custom_elevated_button.dart';

class PackDetailsButtons extends StatefulWidget {
  final ThemeData theme;
  const PackDetailsButtons({Key? key, required this.theme}) : super(key: key);

  @override
  State<PackDetailsButtons> createState() => _PackDetailsButtonsState();
}

class _PackDetailsButtonsState extends State<PackDetailsButtons> {
  bool isFavorite = false;

  void favorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            icon: Icons.play_arrow,
            title: "Play",
            buttonStyle: widget.theme.elevatedButtonTheme.style!
                .copyWith(
                backgroundColor: MaterialStateProperty.all(
                    kSystemPrimaryColor)),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: CustomElevatedButton(
            icon: !isFavorite ? Icons.star : Icons.star_half_outlined,
            title: !isFavorite ? "Favorite" : "Unfavorite",
            color: !isFavorite ? Colors.white : kSystemTertiaryColor,
            onPressed: favorite,
          ),
        ),
      ],
    );
  }
}
