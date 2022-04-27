import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/widgets/on_boarding_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21283F),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 450,
            child: PageView(
              children: [
                OnBoarding(
                  image: "assets/images/Relax sounds - stp 1.png",
                  title: "Exclusive Music",
                  subTitle:
                      "We have an author's library of sounds that you will not find anywhere else",
                ),
                OnBoarding(
                  image: "assets/images/Relax sounds - stp2.png",
                  title: "Relax sleep sounds",
                  subTitle:
                      "Our sounds will help to relax and improve your sleep health",
                ),
                OnBoarding(
                  image: "assets/images/Relax sounds - stp3.png",
                  title: "Story for kids",
                  subTitle:
                      "Famous fairy tales with soothing sounds will help your children fall asleep faster",
                ),
              ],
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2D344B)),
                  elevation: MaterialStateProperty.all(0),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
                ),
                onPressed: () {},
                child: SizedBox(
                  width: 200,
                  child: Text(
                    "Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF21283F)),
                  elevation: MaterialStateProperty.all(0),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    Text("Login with Google"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
