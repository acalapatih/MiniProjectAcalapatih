import 'package:flutter/material.dart';
import 'package:mini_project_acalapatih/screen/dashboard_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project_acalapatih/screen/insight_screen.dart';
import 'package:mini_project_acalapatih/screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const DashboardScreen(),
    const DashboardScreen(),
    const InsightScreen(),
    const ProfileScreen()
  ];

 void _onItemTapped(int index){
   setState(() {
     _selectedIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard'
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Work Log'
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/venn.svg",
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            label: 'Analytic'
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/dots.svg",
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
