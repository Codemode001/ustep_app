import 'package:flutter/material.dart';

import 'package:ustep_app/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  String username = '';
  String password = '';
  String errorMessage = '';

  void _login() {
    if (username == '2021303322' && password == 'hello123') {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
    } else {
      setState(() {
        errorMessage = 'Username or password is incorrect.';
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                            setState(() {
                              username = value;
                            });
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
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text("Forgot your password?", style: TextStyle(
                          color:  Color(0xFF808080)
                        ),),
                      ),

                      Center(
                        child: Text(
                          errorMessage,
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(270, 50),
                      primary:Color(0xFF201B50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Text("Login", style: TextStyle(
                      color: Colors.white
                    ),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
