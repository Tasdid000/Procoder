import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/allpages/No%20experience/aboutcode/what_is_programming.dart';

class what_is_code extends StatefulWidget {
  const what_is_code({Key? key}) : super(key: key);

  @override
  _what_is_codeState createState() => _what_is_codeState();
}

class _what_is_codeState extends State<what_is_code> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFffffff),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color:Color(0xFF9caaf5))),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text("What is code?",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Code is how we communicate with",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("computers. Writing code is like writing a set",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text( "of instructions that tell a computer what to do.",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("images/welcome-three.png"),
                SizedBox(
                  height: 160,
                ),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => what_is_programming()));
                  },
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF9caaf5)
                      ),
                      height: 50,
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Center(child: Text("Next",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
