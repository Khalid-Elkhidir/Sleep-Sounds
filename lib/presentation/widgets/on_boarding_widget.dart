import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  String image;
  String title;
  String subTitle;

  OnBoarding(
      {Key? key, required this.image, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Text(
                title,
                style: textTheme.headline4,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: textTheme.subtitle1!.copyWith(
                  height: 1.2,
                  fontSize: 16
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
