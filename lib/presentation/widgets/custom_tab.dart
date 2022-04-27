import 'package:flutter/material.dart';

class CustomTab extends Tab {
  final String customIcon;
  final String customText;

  CustomTab({Key? key, required this.customIcon, required this.customText})
      : super(
          key: key,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                ImageIcon(AssetImage(customIcon)),
                Text(customText),
              ],
            ),
          ),
        );
}
