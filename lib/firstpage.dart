import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/splashpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(

          child: Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      "procoder",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "A",
                          style: TextStyle(
                          ),
                        ),
                        Text(
                          " Code with Google",
                          style: TextStyle(
                          ),
                        ),
                        Text(
                          " PROGRAM",
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),
                    Image(
                        image: AssetImage("images/3.png")),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 100),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => splashpage(),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF90B4DC)),
                              height: 50,
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Center(
                                      child: Text(
                                    "Start Without Signing In",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF9caaf5)
                              ),
                              height: 50,
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/2.png",
                                    height: 20,
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Center(
                                      child: Text(
                                    "Sign In with Google",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        )));
  }
}
