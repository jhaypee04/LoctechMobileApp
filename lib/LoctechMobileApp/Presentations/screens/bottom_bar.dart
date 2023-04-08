import 'package:flutter/material.dart';
import 'package:m/LoctechMobileApp/Presentations/screens/staffs.dart';
import 'package:m/LoctechMobileApp/Presentations/screens/courses.dart';
import 'package:m/LoctechMobileApp/Presentations/screens/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Courses(),
    const Staffs(),
    const Text("Contact Us"),
    const Text("Food Canteen"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0XFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Staffs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: "Contact Us",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: "Canteen",
          ),
        ],
      ),
    );
  }
}
