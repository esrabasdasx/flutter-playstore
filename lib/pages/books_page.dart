import 'package:flutter/material.dart';
import 'dart:math';

class BooksPage extends StatefulWidget{
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, // 4 sekme olduğu için
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Kitaplarda arayın",
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              suffixIcon: Icon(Icons.mic, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),

            ),
          ),
        ),

        actions: [
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
            Tab(text: "En çok satanlar"),
            Tab(text: "Yeni çıkanlar"),
            Tab(text: "Türler"),
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
                  "Top-selling ebooks",
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
                childAspectRatio: 1.5,
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
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New release ebooks",
                  style: TextStyle(fontSize: 16, color: Colors.white),
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
                childAspectRatio: 1.5,
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
        ],
      ),
      ),
    );





  }

}