import 'package:dashboard/Screens/Weather/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:http/http.dart';
import 'package:dashboard/routes.dart';

class Dashboard extends StatefulWidget {
  static String route = "dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("This is init state");
  }
  //For Navigation between screens
  // int navigationIndex = 1;
  // final navigationPages[

  // ];

  void getData() async {}
  @override
  Widget build(BuildContext context) {
    double width_mq = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Color(0xffC9E265),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset('assets/images/dashboard_blob3.png'),
              SafeArea(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(width_mq * 0.85, 0, 0, 0),
                      child: IconButton(
                        icon: new Icon(FeatherIcons.user,
                            size: 30, color: Color(0xff004B20)),
                        onPressed: null,
                      ))),
              SafeArea(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: IconButton(
                        icon: new Icon(
                          FeatherIcons.menu,
                          size: 30,
                          color: Color(0xff004B20),
                        ),
                        onPressed: null,
                      ))),
              Container(
                margin: EdgeInsets.fromLTRB(50, 85, 0, 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "24°C",
                          style: TextStyle(
                            fontSize: 46,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff004B20),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 104,
                            child: Text(
                              'cloudy',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(181, 220, 0, 0),
                  child: Image.asset('assets/images/plant.png')),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                margin: EdgeInsets.only(top: 304),
                width: width_mq,
                height: 750,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    //Main Content with icons
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF1FFBA),
                            border: Border.all(
                                color: Color(
                              0xff004B20,
                            )),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        width: 302,
                        height: 600,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 32, 20, 32),
                          child: Column(
                            children: [
                              //First Row
                              Row(
                                children: [
                                  //Weather Page Button
                                  TextButton(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(5, 4),
                                              )
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        width: 114,
                                        height: 145,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 21),
                                              child: Image.asset(
                                                'assets/images/dashboardimages/weather_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Weather',
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 19,
                                                  color: Colors.black),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        )),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, WeatherPage.route);
                                    },
                                  ),
                                  //APMC button
                                  TextButton(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.25),
                                              spreadRadius: 0,
                                              blurRadius: 4,
                                              offset: Offset(5, 4),
                                            )
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      width: 114,
                                      height: 145,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 21),
                                            child: Image.asset(
                                              'assets/images/dashboardimages/apmc_icon.png',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'APMC\nMandi',
                                            style: TextStyle(
                                                height: 1,
                                                fontFamily: 'Quicksand',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19,
                                                color: Colors.black),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              //Second Row
                              Row(
                                children: [
                                  //Community Button
                                  TextButton(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(5, 4),
                                              )
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        width: 114,
                                        height: 145,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 21),
                                              child: Image.asset(
                                                'assets/images/dashboardimages/community_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Community',
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                  //News Button
                                  TextButton(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(5, 4),
                                              )
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        width: 114,
                                        height: 145,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 21),
                                              child: Image.asset(
                                                'assets/images/dashboardimages/news_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'News',
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              //Third Row
                              Row(
                                children: [
                                  //Soil Testing Button
                                  TextButton(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(5, 4),
                                              )
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        width: 114,
                                        height: 145,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 21),
                                              child: Image.asset(
                                                'assets/images/dashboardimages/soil_testing_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Soil\nTesting',
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                  //Equipment renting
                                  TextButton(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(5, 4),
                                              )
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        width: 114,
                                        height: 145,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 21),
                                              child: Image.asset(
                                                'assets/images/dashboardimages/equipment_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Equipment\nRenting',
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/images/dashboardimages/bottom_logo.png'),
                        SizedBox(width: 15),
                        Text("Krishivalah",
                            style: TextStyle(
                              height: 1,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400,
                              fontSize: 40,
                              color: Color(0xff004B20),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
