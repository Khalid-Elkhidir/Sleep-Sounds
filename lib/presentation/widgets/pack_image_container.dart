import 'package:flutter/material.dart';

import '../../domain/entities/pack.dart';

class PackImageContainer extends StatelessWidget {
  final Pack pack;
  const PackImageContainer({Key? key, required this.pack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF2D344B), width: 1),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Image.asset(
        pack.artwork,
      ),
    );
  }
}
