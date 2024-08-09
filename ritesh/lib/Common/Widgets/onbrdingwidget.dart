import 'package:flutter/material.dart';
import 'package:ritesh/Theme/Style.dart';
import 'package:ritesh/Theme/strings.dart';
import 'package:velocity_x/velocity_x.dart';

// New reusable widget
class OnboardingContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const OnboardingContent({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                imagePath,
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                title,
                style: onbrodingtitle,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                subtitle,
                style: onbordingsubtitle,
              ),
            )
          ],
        )
      ],
    );
  }
}
