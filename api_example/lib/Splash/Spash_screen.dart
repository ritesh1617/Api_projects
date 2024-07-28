import 'package:api_example/Const/export.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the second screen after a delay
    Future.delayed(Duration(seconds: 3), () {
      // {{ edit_2 }}
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home_screen()), // {{ edit_3 }}
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset('assets/splash.json'),
      ),
    );
  }
}
