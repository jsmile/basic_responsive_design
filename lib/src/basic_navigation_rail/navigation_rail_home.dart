import 'package:flutter/material.dart';

class NavigaionRailHome extends StatefulWidget {
  const NavigaionRailHome({super.key});

  @override
  State<NavigaionRailHome> createState() => _NavigaionRailHomeState();
}

class _NavigaionRailHomeState extends State<NavigaionRailHome> {
  final List<Widget> _screens = [
    // content for Home tab
    Container(
      color: Colors.yellow.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Home',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // content for Feed tab
    Container(
      color: Colors.purple.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Feed',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // content for Favorites tab
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Favorites',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // content for Settings tab
    Container(
      color: Colors.pink.shade200, // alignment 가 없으면 child 배경색상
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  final List<NavigationRailDestination> _destinations = const [
    NavigationRailDestination(
      icon: Icon(Icons.home),
      label: Text('Home'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.feed),
      label: Text('Feed'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.favorite),
      label: Text('Favorites'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Navigation Rail'),
      ),
      body: Row(
        children: [
          if (MediaQuery.sizeOf(context).width >= 640)
            NavigationRail(
              selectedIndex: _selectedIndex,
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(color: Colors.blueAccent),
              unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
              selectedIconTheme: const IconThemeData(color: Colors.blueAccent),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              leading: const Column(
                children: [
                  // SizedBox(
                  //   height: 8,
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 10),
                    child: CircleAvatar(
                      radius: 25,
                      foregroundColor: Colors.deepPurple,
                      child: Icon(Icons.person),
                      // backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                  ),
                ],
              ),
              destinations: _destinations.map((item) => item).toList(),
              onDestinationSelected: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: (MediaQuery.sizeOf(context).width < 640)
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.blueAccent,
              selectedLabelStyle: const TextStyle(color: Colors.blueAccent),
              selectedIconTheme: const IconThemeData(color: Colors.blueAccent),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.feed),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            )
          : null,
    );
  }
}
