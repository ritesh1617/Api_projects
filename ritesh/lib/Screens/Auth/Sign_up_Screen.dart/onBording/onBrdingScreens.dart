import 'package:flutter/material.dart';
import 'package:ritesh/Common/Widgets/onbrdingwidget.dart';
import 'package:ritesh/Theme/strings.dart';

class onbording1 extends StatefulWidget {
  const onbording1({super.key});

  @override
  State<onbording1> createState() => _onbording1State();
}

class _onbording1State extends State<onbording1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnboardingContent(
          imagePath: images.onbording1,
          title: RouteNames.onbrodingscreen1text1,
          subtitle: RouteNames.onboridingscreen1text2,
        ),
      ),
    );
  }
}

//onbordingscreen2
class onbording2 extends StatelessWidget {
  const onbording2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnboardingContent(
          imagePath: images.onbording2,
          title: RouteNames.onboridingscreen2text1,
          subtitle: RouteNames.onbordingscreen2text2,
        ),
      ),
    );
  }
}

////onbordingscreen3
class onbording3 extends StatelessWidget {
  const onbording3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnboardingContent(
          imagePath: images.onbording3,
          title: RouteNames.onboridingscreen3text1,
          subtitle: RouteNames.onbordingscreen3text2,
        ),
      ),
    );
  }
}
