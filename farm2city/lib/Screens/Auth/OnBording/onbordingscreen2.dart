import 'package:farm2city/Theme/Strings.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPages extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: AppStrings.welcomeTitle,
      body: AppStrings.welcomeDescription,
      image: Center(child: Image.asset('assets/farmer.png', height: 175.0)),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: AppStrings.farmerProfilesTitle,
      body: AppStrings.farmerProfilesDescription,
      image: Center(child: Image.asset('assets/farmers.png', height: 175.0)),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: AppStrings.easyOrderingTitle,
      body: AppStrings.easyOrderingDescription,
      image: Center(child: Image.asset('assets/delivery.png', height: 175.0)),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: AppStrings.sustainabilityTitle,
      body: AppStrings.sustainabilityDescription,
      image: Center(child: Image.asset('assets/community.png', height: 175.0)),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
      footer: ElevatedButton(
        onPressed: () {
          // Navigate to home screen
        },
        child: Text(AppStrings.getStarted),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        onSkip: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
