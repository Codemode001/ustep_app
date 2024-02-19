import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF201B50),
          automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(Icons.person_pin, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
