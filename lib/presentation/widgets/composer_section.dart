import 'package:flutter/material.dart';

import 'composer_card.dart';

class ComposerSection extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> cards;

  const ComposerSection({
    Key? key,
    required this.title,
    required this.description,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(title, style: textTheme.subtitle1,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(description, style: textTheme.caption),
        ),
        SizedBox(
          height: 150,
          width: size.width,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            separatorBuilder: (context, index) => SizedBox(width: 8,),
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index) => cards[index],
          ),
        ),
      ],
    );
  }
}
