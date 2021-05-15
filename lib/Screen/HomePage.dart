import 'package:flutter/material.dart';
import 'package:space_concept/Model/buttonNav.dart';
import 'package:space_concept/Screen/explore.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: kToolbarHeight,
          color: Color(0xFF201E39),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                List.generate(nav.length, (i) => Image.asset(nav[i].path)),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/back1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              'assets/menu.png',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'SpaceElement',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Container()
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white30,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10,
                              )
                            ]),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              'Search your favorite planet',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Hero(
                        tag: 'earth',
                        child: Container(
                          width: 270,
                          height: 270,
                          child: Image.asset('assets/earth2.png'),
                        ),
                      ),
                      Text(
                        'Earth',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Planet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nHabitant sem ut sit fames.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Text(
                              'View more',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ExplorePage(),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
