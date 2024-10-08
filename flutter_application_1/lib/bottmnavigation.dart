// import 'package:flutter/material.dart';


// class MyBottomNavigation extends StatefulWidget {
//   MyBottomNavigation({Key? key}) : super(key: key);

//   @override
//   _MyBottomNavigationState createState() => _MyBottomNavigationState();
// }

// class _MyBottomNavigationState extends State<MyBottomNavigation> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter BottomNavigationBar Example'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Colors.green,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//             backgroundColor: Colors.yellow,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//             backgroundColor: Colors.blue,
//           ),
//         ],
//         type: BottomNavigationBarType.shifting,
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         iconSize: 40,
//         onTap: _onItemTapped,
//         elevation: 5,
//       ),
//     );
//   }
// }
