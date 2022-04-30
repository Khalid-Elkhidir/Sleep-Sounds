import 'package:flutter/material.dart';

class CustomTab extends Tab {
  final String customIcon;
  final String customText;

  CustomTab({Key? key, required this.customIcon, required this.customText})
      : super(
          key: key,
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Row(
              children: [
                ImageIcon(AssetImage(customIcon)),
                SizedBox(
                  width: 4,
                ),
                Text(customText),
              ],
            ),
          ),
        );
}
