import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/allpages/experience.dart';
import 'package:procoder/loginandsignin/signinpage.dart';

import 'loginpage.dart';

class login_and_signin_page extends StatefulWidget {
  const login_and_signin_page({Key? key}) : super(key: key);

  @override
  _login_and_signin_pageState createState() => _login_and_signin_pageState();
}

class _login_and_signin_pageState extends State<login_and_signin_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFffffff),
          body:Center(
              child: Column(
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page1(),));
                  },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Skip",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Sign-In and Never Lose Your Progress",
                    style: TextStyle(

                      fontSize: 18,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/6.png")
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("One Tap Sign In",
                    style: TextStyle(

                      fontSize: 20
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/2.png"),
                        backgroundColor: Colors.white,
                        maxRadius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("images/1.png"),
                        backgroundColor: Colors.white,
                        maxRadius: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signin(),));
                  },
                      child: Text("Sign Up with Email",
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I already have a account.",
                        style: TextStyle(

                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                      },
                          child: Text("Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),

        ),
    );
  }
}
