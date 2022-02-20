import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../find_your_path.dart';

class procoder_teachme extends StatefulWidget {
  const procoder_teachme({Key? key}) : super(key: key);

  @override
  _procoder_teachmeState createState() => _procoder_teachmeState();
}

class _procoder_teachmeState extends State<procoder_teachme> {
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
                        child: Icon(Icons.arrow_back, color: Color(0xFF9caaf5))),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text("What will Procoder teach me?",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Procoder covers fundamental coding \n"
                    "concepts using fun, bitesize puzzles. In the \n"
                    "process, you will also learn how to build \n"
                    "your career for python. \n",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset("images/welcome-three.png"),
                SizedBox(
                  height: 159,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => finr_your_path()));
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
