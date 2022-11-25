import 'package:flutter/material.dart';
import 'package:scenery_app_ui_10/util/card_image.dart';
import 'package:scenery_app_ui_10/util/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //--------------------bottomNavigationBar--------------------------//
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: ''
          ),
        ],
      ),
      //----------------------------body---------------------------------//
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //----------------------header----------------------------//
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'where do you',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'want to discovery?',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),

              SizedBox(height: 20.0),

              //-----------------------Search---------------------------//
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 218, 217, 217)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(Icons.search, color: Colors.grey, size: 30),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.segment_outlined, size: 30)),
                ),
              ),

              SizedBox(height: 20.0),

              //----------------------Categories----------------------------//
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25.0),

              Container(
                height: 65,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Categories(
                        categoryImagePath: 'assets/icons/mountain.png',
                        categoryName: 'Mountain',
                      ),
                      Categories(
                        categoryImagePath: 'assets/icons/camp.png',
                        categoryName: 'Camp',
                      ),
                      Categories(
                        categoryImagePath: 'assets/icons/forest.png',
                        categoryName: 'Forest',
                      ),
                      Categories(
                        categoryImagePath: 'assets/icons/lake.png',
                        categoryName: 'Lake',
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              //-----------------------Categories---------------------------//
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardImage(
                      imagePath: 'assets/images/travel-1.jpg',
                      locationName: 'Norway',
                    ),
                    CardImage(
                      imagePath: 'assets/images/travel-2.jpg',
                      locationName: 'Canada',
                    ),
                    CardImage(
                      imagePath: 'assets/images/travel-3.jpg',
                      locationName: 'Spain',
                    ),
                    CardImage(
                      imagePath: 'assets/images/travel-4.jpg',
                      locationName: 'Sweden',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
