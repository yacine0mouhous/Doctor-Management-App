import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Calaendar.dart';
import 'package:flutter_application_1/widget/calendar_menu.dart';

import 'package:flutter_application_1/widget/custom_Appbar.dart';
import 'package:flutter_application_1/widget/servicelist.dart';

class home_screen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  DateTime next_appoitement = DateTime(2024, 4, 21);
  home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                custom_Appbar(),
                const Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5, bottom: 15),
                  child: Text(
                    "hello,tony stark ",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'special',
                        fontWeight: FontWeight.bold),
                  ),
                ),

                // search bar

                Center(
                    child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.green, // Specify the color here
                      width: 3, // Specify the width of the border
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search service",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                          size: 30,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      ),
                    ),
                  ),
                )),

                const SizedBox(
                  height: 15,
                ),
                //screen that show ur next appointement
                Center(
                  child: Container(
                    height: 140,
                    width: 350,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            height: 130,
                            width: 220,
                            child: Center(
                                child: Text(
                              "your next appoitement is on : " +
                                  next_appoitement.day.toString() +
                                  "/" +
                                  next_appoitement.month.toString() +
                                  "/" +
                                  next_appoitement.year.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'special',
                              ),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.notifications_active,
                              size: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                    ),
                  ),
                ),

                //service text
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15, bottom: 20),
                  child: Text(
                    'service : ',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontFamily: 'special',
                    ),
                  ),
                ),

// service list widget
                Center(
                  child: Container(
                    height: 100,
                    width: 400,
                    child: ServiceList(),
                  ),
                  // calender
                ),

                // calendar text
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15, bottom: 10),
                  child: Text(
                    'calendar',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontFamily: 'special',
                    ),
                  ),
                ),

                //the calendar widget in the menu
                Center(
                  child: Container(
                    height: 400,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Calendar_menu([5], next_appoitement),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
