import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../screens/home_developer.dart';

class MainDeveloperPage extends StatefulWidget {
  const MainDeveloperPage({super.key});

  @override
  State<MainDeveloperPage> createState() => _MainDeveloperPageState();
}

class _MainDeveloperPageState extends State<MainDeveloperPage> {
  int index = 0;

  final screens = [
    DeveloperHome(),
    Center(child: Text("Mail2", style: TextStyle(color: Colors.green))),
    Center(child: Text("Mail3", style: TextStyle(color: Color.fromRGBO(233, 30, 99, 1)))),
    Center(child: Text("Mail4", style: TextStyle(color: Colors.blue))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: secondaryColor,
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(color: Colors.white),
          ),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 90,
          backgroundColor: buttonColor,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.messenger_outline), label: 'Messages'),
            NavigationDestination(
                icon: Icon(Icons.person_2_outlined), label: 'profile'),
            NavigationDestination(
                icon: Icon(Icons.notifications_none_outlined),
                label: 'notifications'),
          ],
        ),
      ),
    );
  }
}
