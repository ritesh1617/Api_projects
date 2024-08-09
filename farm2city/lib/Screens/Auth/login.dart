import 'package:farm2city/Screens/Auth/signup.dart';
import 'package:farm2city/Theme/Strings.dart';
import 'package:farm2city/Widgets/login/signupwidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.login),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextFormField(
                controller: emailController,
                labelText: AppStrings.email,
              ),
              CustomTextFormField(
                controller: passwordController,
                labelText: AppStrings.password,
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                text: AppStrings.login,
                onPressed: () {
                  // Handle login logic
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(AppStrings.signup),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
