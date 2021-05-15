import 'package:flutter/material.dart';
import 'package:space_concept/Model/buttonNav.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          height: kToolbarHeight,
          color: Color(0xFF201E39),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                List.generate(nav.length, (i) => Image.asset(nav[i].path)),
          ),
        ),
        body: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Image.asset(
                    'assets/explore.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: -200,
                  child: Hero(
                    tag: 'earth',
                    child: Image.asset('assets/explo.png'),
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
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(7),
                            child: Text(
                              '3',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white30, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Explore',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nHabitant sem ut sit fames in adipiscing. Ac magna donec \negestas habitant.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
