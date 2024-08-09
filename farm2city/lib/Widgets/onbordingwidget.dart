// // lib/onboarding_screen.dart
// import 'package:flutter/material.dart';

// class OnboardingScreen extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String description;
//   final String imagePath;

//   OnboardingScreen({
//     required this.title,
//     required this.subtitle,
//     required this.description,
//     required this.imagePath,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(imagePath), // Add your own image asset
//           Text(
//             title,
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 20),
//           Text(
//             subtitle,
//             style: TextStyle(fontSize: 16),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 40.0),
//             child: Text(
//               description,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 14),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
