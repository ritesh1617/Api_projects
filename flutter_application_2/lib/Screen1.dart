import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorChangeScreen extends StatefulWidget {
  @override
  _ColorChangeScreenState createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color _backgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _loadBackgroundColor();
  }

  // Load the saved background color from SharedPreferences
  void _loadBackgroundColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? colorValue = prefs.getInt('backgroundColor');
    if (colorValue != null) {
      setState(() {
        _backgroundColor = Color(colorValue);
      });
    }
  }

  // Save the selected background color to SharedPreferences
  void _saveBackgroundColor(Color color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('backgroundColor', color.value);
  }

  // Function to handle button press and change background color
  void _changeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
    _saveBackgroundColor(color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _changeColor(Colors.blue),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Blue'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _changeColor(Colors.green),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Green'),
            ),
          ],
        ),
      ),
    );
  }
}
