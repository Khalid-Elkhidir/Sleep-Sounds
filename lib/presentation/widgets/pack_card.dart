import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/pack_details.dart';

import '../../domain/entities/pack.dart';

class PackCard extends StatelessWidget {
  final Pack pack;

  const PackCard({Key? key, required this.pack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned(
              child: GestureDetector(
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PackDetails(pack: pack,)),);
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF2D344B), width: 1),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Image.asset(
                    pack.artwork,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 12,
              child: Container(
                height: 24,
                width: 24,
                decoration: ShapeDecoration(
                    shape: CircleBorder(), color: Color(0xFF21283F)),
                child: IconButton(
                  iconSize: 12,
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          pack.name,
          style: textTheme.headline4!.copyWith(fontSize: 16),
        ),
        Text(
          "${pack.songs.length} Songs • ${pack.category}",
          style: textTheme.caption,
        ),
      ],
    );
  }

  void showPackDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(32),
      )),
      builder: (context) => DraggableScrollableSheet(
        expand: true,
        initialChildSize: 0.3,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        builder: (context, controller) => Container(
          decoration: BoxDecoration(
            color: Color(0xFF21283F),
          ),
          child: ListView(
            controller: controller,
            children: [Text("aaaaaa")],
          ),
        ),
      ),
    );
  }
}
