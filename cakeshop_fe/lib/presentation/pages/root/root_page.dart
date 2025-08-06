import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootPage extends StatelessWidget{
  const RootPage(
    this.navigationShell,
    {super.key
  });
  final StatefulNavigationShell navigationShell;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.bubble_chart_rounded, color: Color(0xFFFFAFB0)), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xFFFFAFB0)), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_rounded, color: Color(0xFFFFAFB0)), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Color(0xFFFFAFB0)), label: 'My'),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}