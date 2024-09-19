import 'package:flutter/material.dart';
import 'package:project/Theme/style.dart'; // Ensure your path to the style file is correct

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.primaryBackgroundColor, // Set background color
      body: Padding(
        padding: AppStyles.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60.0), // Add some space at the top
            _buildLogo(), // Logo widget for "Trading Buddy"
            const SizedBox(height: 40.0),
            _buildChartImage(), // Chart image widget
            const SizedBox(height: 40.0),
            _buildTitle(), // Title section
            const SizedBox(height: 20.0),
            _buildEmailField(), // Email input field
            const SizedBox(height: 20.0),
            _buildPasswordField(), // Password input field
            const SizedBox(height: 30.0),
            _buildLoginButton(context), // Login button
            const SizedBox(height: 20.0),
            _buildSignUpLink(context), // Sign Up link
          ],
        ),
      ),
    );
  }

  // Build Logo (Trading Buddy)
  Widget _buildLogo() {
    return Center(
      child: Image.asset(
        'assets/splash/trading_buddy_logo.png', // Replace with the actual path to the Trading Buddy logo
        height: 100.0, // Adjust size as needed
      ),
    );
  }

  // Build Chart Image
  Widget _buildChartImage() {
    return Center(
      child: Image.asset(
        'assets/loginscreenimg.png', // Replace with the actual path to the chart image
        height: 200.0, // Adjust size as needed
      ),
    );
  }

  // Title Text
  Widget _buildTitle() {
    return Column(
      children: [
        Text(
          'Your Trading Journey Starts Here.',
          style: AppStyles.heading2, // Large, bold heading
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        Text(
          'Our platform provides tools, knowledge, and support for your trading success.',
          style: AppStyles.bodyText2, // Smaller, secondary text
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  // Email TextField
  Widget _buildEmailField() {
    return TextField(
      decoration: AppStyles.inputDecoration.copyWith(
        hintText: 'Email Address',
        prefixIcon: Icon(Icons.email, color: AppStyles.textColorSecondary),
      ),
      keyboardType: TextInputType.emailAddress,
      style: AppStyles.bodyText1,
    );
  }

  // Password TextField
  Widget _buildPasswordField() {
    return TextField(
      decoration: AppStyles.inputDecoration.copyWith(
        hintText: 'Password',
        prefixIcon: Icon(Icons.lock, color: AppStyles.textColorSecondary),
      ),
      obscureText: true,
      style: AppStyles.bodyText1,
    );
  }

  // Login Button
  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle login logic here
      },
      style: AppStyles.elevatedButtonStyle,
      child: Text('Login', style: AppStyles.buttonText),
    );
  }

  // Sign-Up Link
  Widget _buildSignUpLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don’t have an account?', style: AppStyles.bodyText2),
        const SizedBox(width: 5.0),
        GestureDetector(
          onTap: () {
            // Navigate to the Sign-Up page
          },
          child: Text(
            'Sign Up here',
            style: AppStyles.linkText,
          ),
        ),
      ],
    );
  }
}
