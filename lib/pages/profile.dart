import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF201B50),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, right: 10, left: 10),
        child: Column(
          children: [
          Center(
            child: Icon(Icons.person_pin, size: 120, color: Colors.grey,),
          ),
            Center(
              child: Text('Harold Rhey Pisos', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
            Center(
              child: Text('3rd yr. Student', style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey
              ),),
            ),
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(left: 40, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.email, size: 30, color: Colors.lightBlueAccent,),
                  SizedBox(width: 20,),
                  Text("Example@gmail.com", style: TextStyle(
                    fontSize: 14,
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 10, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.business, size: 30, color: Color(0xFFfab417),),
                  SizedBox(width: 20,),
                  Text("USTP CDO", style: TextStyle(
                    fontSize: 14,
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 10, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.start, size: 30, color: Colors.lightBlueAccent,),
                  SizedBox(width: 20,),
                  Text("April 1, 2019", style: TextStyle(
                    fontSize: 14,
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 10, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.phone_android, size: 30, color: Colors.lightBlueAccent,),
                  SizedBox(width: 20,),
                  Text("09374857362", style: TextStyle(
                    fontSize: 14,
                  ),)
                ],
              ),
            ),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
            },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(270, 50),
                  primary:Color(0xFF3B86D1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Edit Profile", style: TextStyle(
                    color: Colors.white
                ),))
          ],
        ),
      )
    );
  }
}
