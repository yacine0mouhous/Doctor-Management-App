import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/service_screen/service_1.dart';
import 'package:flutter_application_1/screen/service_screen/service_2.dart';
import 'package:flutter_application_1/screen/service_screen/service_3.dart';
import 'package:flutter_application_1/screen/service_screen/service_4.dart';

class Service {
  final String name;
  final String link;

  Service({required this.name, required this.link});
}

final List<Widget> pages = [
  service_1(),
  service_2(),
  service_3(),
  service_4(),
];

class ServiceList extends StatelessWidget {
  final List<Service> services = [
    Service(
        name: 'Visite médicale',
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzNLXQmGUYUyCBigZNTB2yH_J76ohvdmhy7QOl-sRdw&s'),
    Service(
        name: 'Opération',
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKGmQG2E3Ew5JhjVHrvQuY9O-VA0YbMlMZFbCdvy02_g&s'),
    Service(
        name: 'Correction de vision',
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE40cr-pX2m4D4oDDlEh9UWx0W00vhIvR0swBWukjfvw&s'),
    Service(
        name: 'Cataracte',
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPlk2cY4qlR8mvfeZnMR3Z6wk_RBdJLcdpmX5PgmeufQ&s'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          services.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        pages[index],
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      10), // Half of width/height for circular border
                  child: Image.network(
                    services[index].link,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
