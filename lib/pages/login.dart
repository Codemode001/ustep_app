import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/ustp.png'),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 270,
                      height: 50,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color:  Color(0xFFCCE5FF),
                        borderRadius: BorderRadius.circular(22)
                      ),
                      child: TextField(
                        onChanged: (value) {
                        },
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 270,
                      height: 50,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color:  Color(0xFFCCE5FF),
                          borderRadius: BorderRadius.circular(22)
                      ),
                      child: TextField(
                        onChanged: (value) {
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Text("Forgot your password?", style: TextStyle(
                        color:  Color(0xFF808080)
                      ),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(270, 50), // Set minimum width and height
                    primary:Color(0xFF201B50), // Set background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22), // Set border radius
                    ),
                  ),
                  child: Text("Login", style: TextStyle(
                    color: Colors.white
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
