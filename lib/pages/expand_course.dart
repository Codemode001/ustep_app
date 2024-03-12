import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  final String courseName;
  final Color color;

  CourseDetailPage({required this.courseName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(courseName, style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, color.withOpacity(0.9)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Course: $courseName',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                'Classworks:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              _buildListTile('Classwork 1'),
              _buildListTile('Classwork 2'),
              _buildListTile('Classwork 3'),
              SizedBox(height: 20),
              Text(
                'Resources:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              _buildListTile('Resource 1'),
              _buildListTile('Resource 2'),
              _buildListTile('Resource 3'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(String title) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 18, color: Colors.black)),
      leading: Icon(Icons.arrow_forward_ios, color: color),
      onTap: () {
        // Add functionality for the list tile
      },
    );
  }
}