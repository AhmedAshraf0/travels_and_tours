import 'package:flutter/material.dart';
import 'package:travels_and_tours/src/presentation/screens/account/account_screen.dart';
import 'package:travels_and_tours/src/presentation/screens/explore/explore_screen.dart';
import 'package:travels_and_tours/src/presentation/screens/home/home_screen.dart';
import 'package:travels_and_tours/src/presentation/screens/share/share_screen.dart';
import 'package:travels_and_tours/src/presentation/screens/trips/trips_screen.dart';
import 'package:travels_and_tours/src/utils/constants/colors.dart';
import 'package:travels_and_tours/src/utils/constants/constants.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> destinations = [
    HomeScreen(),
    ExploreScreen(),
    TripsScreen(),
    ShareScreen(),
    AccountScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constants.appName,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
          useMaterial3: true,
        ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset('assets/tripstick_logo.jpeg',fit: BoxFit.fill,),
          ),
          leadingWidth: 180,
          actions: const [
            Icon(Icons.favorite_outline_rounded , size: 28,),
            SizedBox(width: 4,),
            Icon(Icons.notifications_none_rounded, size: 28,),
            SizedBox(width: 16,)
          ],
        ),
        bottomNavigationBar: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(
              color: AppColors.mainColor,
            ),
            selectedIconTheme: const IconThemeData(color: AppColors.mainColor),
            selectedFontSize: 12.0,
            unselectedItemColor: Colors.black,
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.mainColor,
            currentIndex: _selectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_travel_outlined),
                label: "Trips",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.share),
                label: "Share",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Account",
              ),
            ],
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
      ),
            Container(
              height: 2,
              width: double.infinity,
              color: AppColors.mainColor,
            )
          ],
        ),
        body: destinations[_selectedIndex],
      ),
    );
  }
}
/*
*
        NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          selectedIndex: _selectedIndex,
          indicatorColor: AppColors.mainColor,
          indicatorShape: null,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home_outlined,color: Colors.yellow,),
              icon: Icon(Icons.home_outlined, color: Colors.black,),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.explore_outlined,color: Colors.yellow,),
              icon: Icon(Icons.explore_outlined, color: Colors.black),
              label: "Explore",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.card_travel_outlined,color: Colors.yellow),
              icon: Icon(Icons.card_travel_outlined,color: Colors.black),
              label: "Trips",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.share,color: Colors.yellow),
              icon: Icon(Icons.share,color: Colors.black),
              label: "Share",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.account_circle_outlined,color: Colors.yellow),
              icon: Icon(Icons.account_circle_outlined,color: Colors.black),
              label: "Account",
            ),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
*
* */