import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Calaendar.dart';

class service_2 extends StatelessWidget {
  const service_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.highlight_remove,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "service 2 ",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'special',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      "this service work on the current days : Wednesday and friday   ",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'special',
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "disclaimer ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontFamily: 'special',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: 300,
                child: Calendar(),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: 300,
                child: Center(
                    child: Text(
                  "take appointement !",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
