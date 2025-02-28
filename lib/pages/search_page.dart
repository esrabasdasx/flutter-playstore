import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              hintText: "Uygulamalar ve oyunla...",
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
            onPressed: () {},
          ),
        ],
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
                  "Oyunları keşfet",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {

                List<IconData> icons = [
                  Icons.airplane_ticket_outlined,
                  Icons.flag,
                  Icons.apps,
                  Icons.alarm,
                  Icons.music_note,
                  Icons.location_on
                ];
                List<String> titles = [
                  'Aksiyon',
                  'Yarış',
                  'Uygulama 2',
                  'Alarm',
                  'Müzik',
                  'Konum'
                ];

                return Container(
                  width: MediaQuery.of(context).size.width / 2 - 45,
                  height: MediaQuery.of(context).size.width / 33,

                  color: Colors.blueAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        titles[index],
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
