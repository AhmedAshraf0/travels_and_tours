import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travels_and_tours/src/business_logic/home/home_bloc.dart';
import 'package:travels_and_tours/src/data/repositories/home_repo/home_repository.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            color: AppColors.mainColor,
          ),
          selectedIconTheme:
              const IconThemeData(color: AppColors.mainColor,
              ),
          selectedFontSize: 12.0,
          elevation: 10,
          unselectedItemColor: Colors.black,
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.mainColor,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.home_outlined),
                  ),
                  if(_selectedIndex == 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Expanded(
                        child: Container(
                          height: 4,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                ],
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.explore_outlined),
                  ),
                  if(_selectedIndex == 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Expanded(
                        child: Container(
                          height: 4,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                ],
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.card_travel_outlined),
                  ),
                  if(_selectedIndex == 2)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Expanded(
                        child: Container(
                          height: 4,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                ],
              ),
              label: "Trips",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.share),
                  ),
                  if(_selectedIndex == 3)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Expanded(
                        child: Container(
                          height: 4,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                ],
              ),
              label: "Share",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.account_circle_outlined),
                  ),
                  if(_selectedIndex == 4)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Expanded(
                        child: Container(
                          height: 4,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                ],
              ),
              label: "Account",
            ),
          ],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: false,
                floating: true,
                backgroundColor: Colors.white,
                scrolledUnderElevation: 0,
                elevation: 0,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Image.asset(
                    'assets/images/tripstick_logo.jpeg',
                    fit: BoxFit.contain,
                  ),
                ),
                leadingWidth: 180,
                actions: const [
                  Icon(
                    Icons.favorite_outline_rounded,
                    size: 28,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 28,
                  ),
                  SizedBox(
                    width: 16,
                  )
                ],
              ),
            ];
          },
          body: RepositoryProvider(
            create: (BuildContext context) => HomeRepository(),
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (BuildContext context) =>
                  HomeCubit(homeRepository: context.read<HomeRepository>())..getHomeData(),
                )
              ], child: destinations[_selectedIndex],
            ),
          ),
        ),
      ),
    );
  }
}