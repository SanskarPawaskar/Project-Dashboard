import 'dart:convert';

import 'package:dashboard/Screens/CropCare/cropcare_home.dart';
import 'package:dashboard/Screens/Ecommerce/ecommerce.dart';
import 'package:dashboard/Screens/Settings/settings.dart';
import 'package:dashboard/Screens/Dashboard/dashboard.dart';
import 'package:dashboard/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:http/http.dart';
import 'routes.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dashboard/data.dart';
import 'data.dart';

//While creating Final app create a different page which thas this code
//and from here direct to dashboard
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: Dashboard.route,
      routes: getRoutes(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getAllData() async {
    AllData data = AllData();
    await data.getLocation();
    print(data.lat);
    print(data.long);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Main init State");
    getAllData();
  }

  void getWeatherdata() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=f8ec8e9f9624de6f8dad5b43922ae5f6'));
        Map data = jsonDecode(response.body);
        Map main = data['main'];
        String temp = main['temp'];

        int stack = 124.32.round();
  }

//For Navigation between screens
  int navigationIndex = 1;
  final navigationPages = [
    EcommercePage(),
    Dashboard(),
    CropCare(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPages[navigationIndex],
      //This code is for Navigation bar
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Color(0xff004B20),
      //     selectedItemColor: Colors.white,
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: navigationIndex,
      //     onTap: (index) => setState(
      //           () => navigationIndex = index,
      //         ),
      //     items: [
      //       BottomNavigationBarItem(
      //         label: 'E-com',
      //         icon: Icon(
      //           FeatherIcons.shoppingCart,
      //           color: Colors.white,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Home',
      //         icon: Icon(
      //           FeatherIcons.home,
      //           color: Colors.white,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Crop-Care',
      //         icon: Icon(
      //           FeatherIcons.feather,
      //           color: Colors.white,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Settings',
      //         icon: Icon(
      //           FeatherIcons.settings,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ]),

//Old navigation bar
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color(0xff1E7141),
            backgroundColor: Color(0xff004B20),
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            )),
        child: NavigationBar(
            selectedIndex: navigationIndex,
            onDestinationSelected: (navigationIndex) =>
                setState(() => this.navigationIndex = navigationIndex),
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    FeatherIcons.shoppingCart,
                    color: Colors.white,
                  ),
                  label: 'E-Com'),
              NavigationDestination(
                  icon: Icon(
                    FeatherIcons.home,
                    color: Colors.white,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(
                    FeatherIcons.feather,
                    color: Colors.white,
                  ),
                  label: 'Crop-Care'),
              NavigationDestination(
                  icon: Icon(
                    FeatherIcons.settings,
                    color: Colors.white,
                  ),
                  label: 'Settings'),
            ]),
      ),
    );
  }
}
