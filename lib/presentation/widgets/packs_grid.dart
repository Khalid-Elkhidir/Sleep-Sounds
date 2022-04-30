import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/pack_card.dart';

import '../../data/data_model.dart';
import '../../domain/entities/pack.dart';

class PacksGrid extends StatelessWidget {
  final List<Pack> packs;

  const PacksGrid({Key? key, required this.packs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: packs.length,
      itemBuilder: (context, index) => PackCard(pack: packs[index]),
    );
  }
}
