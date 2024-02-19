import 'package:flutter/material.dart';

import 'package:ustep_app/pages/profile.dart';

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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Icon(
                    Icons.person_pin,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/appdev.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Other Courses",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFfab417)
                      ),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SmallBox(text: "ISys", color: Color(0xFF4285F4),),
                  SmallBox(text: "InfoM", color: Color(0xFF00FFFF)),
                  SmallBox(text: "ITelc", color: Color(0xFF0D47A1)),
                  SmallBox(text: "ELEC", color: Color(0xFF87CEEB))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallBox(text: "FL", color: Color(0xFF90CAF9),),
                  SmallBox(text: "NET", color: Color(0xFF1E90FF)),
                  SmallBox(text: "IPC", color: Color(0xFF009688)),
                  SmallBox(text: "CS", color: Colors.grey)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Upcomming events",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFfab417)
                    ),)
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 180,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 260,
                        height: 150,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/gdev.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        height: 150,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/lycan-fest.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        height: 150,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/uda.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SmallBox extends StatelessWidget {
  final String text;
  dynamic color;

  SmallBox({
    required this.text,
    required this.color
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Center(
        child: Text(this.text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}

