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
                style: const TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 31,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  height: 1.2,
                  color: Color(0xAAEBEBF6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
