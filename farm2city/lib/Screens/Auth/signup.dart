import 'package:farm2city/Theme/Strings.dart';
import 'package:farm2city/Widgets/login/signupwidget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.signup),
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
              CustomTextFormField(
                controller: confirmPasswordController,
                labelText: AppStrings.confirmPassword,
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                text: AppStrings.signup,
                onPressed: () {
                  // Handle signup logic
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(AppStrings.login),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
