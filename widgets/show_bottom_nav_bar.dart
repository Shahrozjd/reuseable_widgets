import 'package:flutter/material.dart';





class ShowBottomNavBar extends StatefulWidget {
  _ShowBottomNavBarState createState() => _ShowBottomNavBarState();
}

class _ShowBottomNavBarState extends State<ShowBottomNavBar> {
  _ShowBottomNavBarState createState() => _ShowBottomNavBarState();

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return


      BottomNavigationBar(type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,

        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
          if (_currentIndex == 0) Navigator.pushReplacementNamed(context, '/homePage');
          if (_currentIndex == 1) Navigator.pushReplacementNamed(context, '/accountPage');
          if (_currentIndex == 2) Navigator.pushReplacementNamed(context, '/journeyPage');
          if (_currentIndex == 3) Navigator.pushReplacementNamed(context, '/profilePage');
        },
        items: [
          BottomNavigationBarItem(
            label: 'Top',
            icon: Icon(Icons.emoji_transportation),


          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.account_balance),
          ),
          BottomNavigationBarItem(
            label: 'Journeys',
            icon: Icon(Icons.location_history),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.settings),
          ),
        ],
      );
  }

}
