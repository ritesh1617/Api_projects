import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ritesh/Screens/Auth/Sign_up_Screen.dart/onBording/onBrdingScreens.dart';
import 'package:ritesh/Theme/Style.dart';
import 'package:ritesh/Theme/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class Onbording extends StatefulWidget {
  Onbording({super.key});

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = (index == 2); // Update state
            });
          },
          children: [
            onbording1(),
            onbording2(),
            onbording3(),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Get",
                style: onbrodingButtonstyle,
              ))
          : Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => controller.jumpToPage(2),
                      child: Text(
                        RouteNames.onbordingskip,
                        style: onbrodingButtonstyle,
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                    ),
                  ),
                  TextButton(
                      onPressed: () => controller.nextPage(
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut),
                      child: Text(
                        RouteNames.onbordingNext,
                        style: onbrodingButtonstyle,
                      )),
                ],
              ),
            ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('Welcome to the Home Screen'),
      ),
    );
  }
}
