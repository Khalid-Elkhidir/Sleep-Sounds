import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_sounds/presentation/screens/main_screen.dart';
import 'package:sleep_sounds/presentation/widgets/on_boarding_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  final pageController = PageController();
  TabController? tabController;

  @override
  initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: size.height * 0.6,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  tabController!.animateTo(value);
                  print(tabController!.index);
                });
              },
              controller: pageController,
              physics: BouncingScrollPhysics(),
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
          Padding(
            padding: const EdgeInsets.all(25),
            child: TabPageSelector(
              controller: tabController,
              indicatorSize: 8,
              color: Color(0xFF2D344B),
              selectedColor: Color(0xFF4870FF),
              borderStyle: BorderStyle.none,
            ),
          ),
          SizedBox(
            width: size.width * 0.8,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (pageController.page! <= 1) {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
                    }
                  },
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage("assets/icons/google_icon.png")),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Login with Google"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
