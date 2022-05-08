import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final List<CustomTile> children;

  const Tile({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 220, minHeight: 20),
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: children,
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final String icon;
  final String title;
  final Color iconColor;
  final bool last;

  const CustomTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.last,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 40,
            decoration: ShapeDecoration(
              color: iconColor.withOpacity(0.24),
              shape: const CircleBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage(icon),
                color: iconColor,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(title,
                style: textTheme.subtitle1!.copyWith(color: Colors.white)),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          ),
        ),
        if(!last) Divider(indent: 60,)
      ],
    );
  }
}
