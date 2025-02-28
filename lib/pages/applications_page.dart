import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ApplicationsPage extends StatefulWidget{
  @override
  _ApplicationsPageState createState() => _ApplicationsPageState();
}

class _ApplicationsPageState extends State<ApplicationsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, // 4 sekme olduğu için
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/playstore-2.ico',
                  width: 28,
                   height: 30,
              ),
            ),


            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.white),
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {

                },
              ),
            ],

        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.white70,
          labelPadding: EdgeInsets.only(left: 0, right: 40),
          tabs: [
            Tab(text: "Size Özel"),
            Tab(text: "Üst Sıralar"),
            Tab(text: "Çocuklar"),
            Tab(text: "Kategoriler"),
          ],
        ),
      ),


          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sizin için önerilenler",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                    Icon(Icons.arrow_forward_sharp, size: 23, color: Colors.grey),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.5,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Öğe $index',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Sponsorlu",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sizin için önerilenler",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              )

            ],
          ),


          ),
        );

  }
}