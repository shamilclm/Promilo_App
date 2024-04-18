import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.black,
      currentIndex: 2,
      elevation: 2,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.window),
          label: 'Prolet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.handshake_outlined),
          label: 'Meetup',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_open_outlined),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Account',
        ),
      ],
    );
  }
}
