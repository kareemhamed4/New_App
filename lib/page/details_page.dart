import 'package:flutter/material.dart';
import 'package:kk/page/Welcome_page/Welcome_Screen.dart';
import '../core/color.dart';
import '../data/plant_model.dart';

class EventDetailsPage extends StatelessWidget {
  final Plants plant;
  const EventDetailsPage({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height / 2,
                    decoration: BoxDecoration(
                      color: lightGreen,
                      boxShadow: [
                        BoxShadow(
                          color: green.withOpacity(0.2),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        image: AssetImage(plant.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: plant.name,
                                    style: TextStyle(
                                      color: black.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  (${plant.category} Event)',
                                    style: TextStyle(
                                      color: black.withOpacity(0.5),
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 30.0,
                              width: 30.0,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: green,
                                boxShadow: [
                                  BoxShadow(
                                    color: green.withOpacity(0.2),
                                    blurRadius: 15,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.asset(
                                'assets/icons/heart.png',
                                color: white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            text: plant.description,
                            style: TextStyle(
                              color: black.withOpacity(0.5),
                              fontSize: 15.0,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (builder) => const WelcomeScreen()));
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 15.0),
                  decoration: BoxDecoration(
                    color: green,
                    boxShadow: [
                      BoxShadow(
                        color: green.withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, -5),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                    ),
                  ),
                  child: Text(
                  'Apply \$${plant.price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: white.withOpacity(0.9),
                    fontSize: 18.0,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                  ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
