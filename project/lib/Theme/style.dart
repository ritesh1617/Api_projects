import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static const Color primaryBackgroundColor =
      Color(0xFF161616); // Main dark background
  static const Color cardBackgroundColor =
      Color(0xFF252525); // Dark gray for cards
  static const Color accentColor = Color(
      0xFFFF3D00); // Bright red for action buttons (e.g., "Login", "Sell Market")
  static const Color buttonBackgroundColor = Color(
      0xFF1F1F1F); // Button background (e.g., for inactive buttons or sections)
  static const Color buyColor = Color(0xFF4CAF50); // Green for "Buy" actions
  static const Color warningColor =
      Color(0xFFFFC107); // Yellow for caution or alerts
  static const Color textColorPrimary = Colors.white; // Main text color (white)
  static const Color textColorSecondary =
      Colors.white54; // Slightly faded white for secondary text
  static const Color iconColor =
      Colors.white; // White icons (navigation bar, action icons)
  static const Color textGrayColor =
      Color(0xFF888888); // Gray text (for hints or non-critical information)
  static const Color inactiveTabColor =
      Color(0xFF4E4E4E); // Gray for inactive tabs or menu items
  static const Color dividerColor =
      Color(0xFF444444); // Divider or borders between sections
  static const Color searchBarColor =
      Color(0xFF333333); // Background for search bar
  static const Color bottomNavBackgroundColor =
      Color(0xFF1F1F1F); // Example color
  static const Color primaryColor =
      Color(0xFFFF6600); // Example primary color (Orange)

  // Text Styles
  static const TextStyle heading1 = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: textColorPrimary,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: textColorPrimary,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: textColorPrimary,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: textColorPrimary,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: textColorSecondary,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: textColorPrimary,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 14.0,
    color: accentColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

  static const TextStyle searchText = TextStyle(
    fontSize: 16.0,
    color: textColorSecondary,
  );

  static const TextStyle hintTextStyle = TextStyle(
    fontSize: 14.0,
    color: textGrayColor,
  );

  static const TextStyle successText = TextStyle(
    fontSize: 16.0,
    color: buyColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle errorText = TextStyle(
    fontSize: 16.0,
    color: accentColor,
    fontWeight: FontWeight.bold,
  );

  // Padding
  static const EdgeInsets defaultPadding = EdgeInsets.all(16.0);
  static const EdgeInsets smallPadding = EdgeInsets.all(8.0);
  static const EdgeInsets mediumPadding = EdgeInsets.all(12.0);

  // Button Styles
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: textColorPrimary,
    backgroundColor: accentColor, // White text
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  static ButtonStyle inactiveButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: textColorSecondary,
    backgroundColor:
        buttonBackgroundColor, // Slightly faded white text for inactive
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: accentColor,
    side: BorderSide(color: accentColor),
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  static ButtonStyle buyButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: textColorPrimary, backgroundColor: buyColor, // White text
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  // Input Field Decoration
  static InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: cardBackgroundColor, // Background for input fields
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: accentColor),
      borderRadius: BorderRadius.circular(12.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: cardBackgroundColor),
      borderRadius: BorderRadius.circular(12.0),
    ),
    hintStyle: hintTextStyle, // For hint text styling
  );

  // Search Bar Decoration
  static InputDecoration searchBarDecoration = InputDecoration(
    filled: true,
    fillColor: searchBarColor, // Background for the search bar
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    hintText: 'Search',
    hintStyle: searchText, // Text styling for the search bar
    prefixIcon: Icon(Icons.search, color: textColorSecondary),
  );

  // Divider
  static Divider customDivider = Divider(
    color: dividerColor, // Divider between sections
    thickness: 1.0,
  );
}

class AppStyles2 {
  // Primary Colors
  static const Color primaryColor =
      Color(0xFFFF6B35); // Bright orange/red used for buttons, sliders, etc.
  static const Color secondaryColor = Color(0xFF1D1D1D); // Dark background
  static const Color textColorPrimary =
      Color(0xFFFFFFFF); // White text for contrast on dark background
  static const Color textColorSecondary =
      Color(0xFFB0B0B0); // Gray text for less important information
  static const Color cardBackgroundColor =
      Color(0xFF2D2D2D); // Dark card background

  // Additional Colors
  static const Color inactiveBubbleColor =
      Color(0xFF3E3E3E); // For inactive bubbles in the referral section
  static const Color buttonBackgroundColor = primaryColor; // For buttons
  static const Color iconColor = Color(0xFFFFFFFF); // White color for icons

  // Bottom Navigation Bar Colors
  static const Color bottomNavBackgroundColor =
      Color(0xFF1D1D1D); // Bottom nav background
  static const Color bottomNavSelectedItemColor =
      Color(0xFFFF6B35); // Selected item in bottom nav
  static const Color bottomNavUnselectedItemColor =
      Color(0xFFB0B0B0); // Unselected item in bottom nav

  // General Styles
  static const EdgeInsetsGeometry defaultPadding =
      EdgeInsets.all(16.0); // Default padding

  // Text Styles
  static const TextStyle heading1 = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: textColorPrimary,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: textColorPrimary,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 18.0,
    color: textColorPrimary,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    color: textColorSecondary,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: textColorPrimary,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 16.0,
    color: primaryColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  // Input Field Decoration
  static final InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFF3E3E3E),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.all(16.0),
    hintStyle: TextStyle(color: textColorSecondary),
  );

  // Button Styles
  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: buttonBackgroundColor,
    padding: EdgeInsets.symmetric(vertical: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );
}
