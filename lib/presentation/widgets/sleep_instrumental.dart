import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/packs_grid.dart';

import '../../data/data_model.dart';
import '../../domain/entities/pack.dart';

class SleepInstrumental extends StatelessWidget {
  List<Pack> packs = List.from(DataModel.packs)..retainWhere((pack) => pack.category == "Instrumental");

  SleepInstrumental({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: size.height * 0.7,
        child: PacksGrid(packs: packs),
      ),
    );
  }
}
