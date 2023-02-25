import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'Screens/CropCare/cropcare_home.dart';
import 'Screens/Dashboard/dashboard.dart';
import 'Screens/Ecommerce/ecommerce.dart';
import 'Screens/Settings/settings.dart';
import 'package:dashboard/main.dart';
import 'main.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int navigationIndex = 1;
  final navigationPages = [
    
    const EcommercePage(),
    const Dashboard(),
    const CropCare(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: const Color(0xff1E7141),
            backgroundColor: const Color(0xff004B20),
            labelTextStyle: MaterialStateProperty.all(
             const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            )),
        child: NavigationBar(
            selectedIndex: navigationIndex,
            onDestinationSelected: (navigationIndex) =>
                setState(() => this.navigationIndex = navigationIndex),
            destinations: [
             const NavigationDestination(
                  icon: Icon(
                    FeatherIcons.shoppingCart,
                    color: Colors.white,
                  ),
                  label: 'E-Com'),
             const NavigationDestination(
                  icon: Icon(
                    FeatherIcons.home,
                    color: Colors.white,
                  ),
                  label: 'Home'),
             const NavigationDestination(
                  icon: Icon(
                    FeatherIcons.feather,
                    color: Colors.white,
                  ),
                  label: 'Crop-Care'),
             const NavigationDestination(
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
// getNavigationBar(){
//   return  bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//             indicatorColor: Color(0xff1E7141),
//             backgroundColor: Color(0xff004B20),
//             labelTextStyle: MaterialStateProperty.all(
//               TextStyle(
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.normal,
//                   color: Colors.white),
//             )),
//         child: NavigationBar(
//             selectedIndex: navigationIndex,
//             onDestinationSelected: (navigationIndex) =>
//                 setState(() => this.navigationIndex = navigationIndex),
//             destinations: [
//               NavigationDestination(
//                   icon: Icon(
//                     FeatherIcons.shoppingCart,
//                     color: Colors.white,
//                   ),
//                   label: 'E-Com'),
//               NavigationDestination(
//                   icon: Icon(
//                     FeatherIcons.home,
//                     color: Colors.white,
//                   ),
//                   label: 'Home'),
//               NavigationDestination(
//                   icon: Icon(
//                     FeatherIcons.feather,
//                     color: Colors.white,
//                   ),
//                   label: 'Crop-Care'),
//               NavigationDestination(
//                   icon: Icon(
//                     FeatherIcons.settings,
//                     color: Colors.white,
//                   ),
//                   label: 'Settings'),
//             ]),
//       ),
// };