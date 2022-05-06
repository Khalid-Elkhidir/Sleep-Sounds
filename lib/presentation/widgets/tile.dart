import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final List<CustomTile> children;

  const Tile({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: children,
    );
  }
}

class CustomTile extends StatelessWidget {
  final String icon;
  final String title;

  const CustomTile({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: Container(
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
        ),
        child: ImageIcon(AssetImage(icon)),
      ),
      title: Text(title, style: textTheme.subtitle1),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
