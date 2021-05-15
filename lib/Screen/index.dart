import 'package:flutter/material.dart';
import 'package:space_concept/Screen/HomePage.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            Positioned(
              bottom: -70,
              right: 0,
              left: 0,
              child: Container(
                child: Image.asset(
                  'assets/earth1.png',
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Space',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  Text(
                    'Exploration',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nHabitant sem ut sit fames in adipiscing. \nAc magna donec egestas habitant.',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View More',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            Positioned(
              top: 25,
              right: 20,
              child: GestureDetector(
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(Icons.close),
                ),
                onTap: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        HomePage(),
                    transitionsBuilder: (
                      BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child,
                    ) =>
                        FadeTransition(
                      opacity: animation,
                      child: child,
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
