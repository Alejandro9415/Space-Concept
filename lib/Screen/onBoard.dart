import 'package:flutter/material.dart';
import 'package:space_concept/Screen/index.dart';

class OnBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Space',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                  children: [
                    TextSpan(
                      text: 'Element',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 35),
                    )
                  ],
                ),
              ),
              Image.asset('assets/index.png'),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'Universe',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. \nHabitant sem ut sit fames in adipiscing. \nAc magna donec egestas habitant.',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_ios), onPressed: () {})
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: null,
                      child: Text(
                        'Skip Step',
                        style: TextStyle(fontSize: 15),
                      )),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => IndexPage(),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
