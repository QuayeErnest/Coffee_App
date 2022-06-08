import 'package:app/Pages/coffe_page.dart';
import 'package:app/Utilities/coffee_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Icon(Icons.person),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "",
        ),
      ]),
      body: Column(children: [
        //find the best coffee for you
        Text(
          "Find the best coffee for you",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),

        SizedBox(height: 23),
        //Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search for coffee",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 25,
        ),

        Container(
          height: 22,
          child: ScrollConfiguration(
            behavior: MyScrollController(),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorite.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        favorite[index].coffeeName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: selectedIndex == index
                              ? Colors.orange
                              : Colors.white60,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
        //horizontal listview of coffee tiles
        CoffeePage(),
      ]),
    );
  }
}
