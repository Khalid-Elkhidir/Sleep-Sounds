import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      height: size.height * 0.4,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: kBackgroundSecondaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          ImageIcon(
            AssetImage("assets/icons/login_user.png"),
            size: 80,
            color: kBackgroundPrimaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Authorization",
              style: textTheme.subtitle1,
            ),
          ),
          Text(
            "In order to access the library of favorite packs of sounds, log in with Apple ID",
            style: textTheme.caption!.copyWith(letterSpacing: 0.4, height: 1),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            style: theme.elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all(kBackgroundPrimaryColor),
            ),
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
          ),
        ],
      ),
    );
  }
}
