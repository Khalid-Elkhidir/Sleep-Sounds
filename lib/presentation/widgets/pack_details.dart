import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PackDetails extends StatelessWidget {
  const PackDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/packs_background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.05,),
            IconButton(onPressed: Navigator
                .of(context)
                .pop, icon: Icon(Icons.arrow_back_ios), padding: EdgeInsets.only(left: 16), color: Colors.white,),
            SizedBox(height: size.height * 0.15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/sleeping.png"),
                      color: Colors.white,
                    ),
                    SizedBox(height: 2,),
                    Text("Mood", style: textTheme.subtitle1!.copyWith(fontSize: 15, letterSpacing: 0.15, color: Colors.white)),
                    SizedBox(height: 8,),
                    Text("Lighthearted", style: textTheme.headline4!.copyWith(fontSize: 20, letterSpacing: 0.15),),
                  ],
                ),
                Column(
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/sleep.png"),
                      color: Colors.white,
                    ),
                    SizedBox(height: 2,),
                    Text("Dreams", style: textTheme.subtitle1!.copyWith(fontSize: 15, letterSpacing: 0.15, color: Colors.white)),
                    SizedBox(height: 8,),
                    Text("Daydreams", style: textTheme.headline4!.copyWith(fontSize: 20, letterSpacing: 0.15)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
