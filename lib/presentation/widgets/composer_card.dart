import 'package:flutter/material.dart';
import 'package:sleep_sounds/utils/constants.dart';

class ComposerCard extends StatelessWidget {
  final String icon;
  final String title;

  const ComposerCard({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(horizontal: 0),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.2),
                alignment: Alignment.center,
                color: kBackgroundSecondaryColor,
                child: ImageIcon(AssetImage(icon), size: 28, color: Colors.white,),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth,
                alignment: Alignment.center,
                color: kBackgroundTertiaryColor,
                child: Text(
                  title,
                  style: textTheme.caption!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
