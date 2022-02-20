import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../find_your_path.dart';

class how_much_will_i_learn extends StatefulWidget {
  const how_much_will_i_learn({Key? key}) : super(key: key);

  @override
  _how_much_will_i_learnState createState() => _how_much_will_i_learnState();
}

class _how_much_will_i_learnState extends State<how_much_will_i_learn> {
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
                Text("How much will I learn?",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("With Procoder, you will practice \n"
                    "fundamental coding concepts through fun \n"
                    "visual puzzles. In the process, you will build \n"
                    "your career for Python. \n",
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
