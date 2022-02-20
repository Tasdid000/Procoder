import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class finr_your_path extends StatefulWidget {
  const finr_your_path({Key? key}) : super(key: key);

  @override
  _finr_your_pathState createState() => _finr_your_pathState();
}

class _finr_your_pathState extends State<finr_your_path> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFffffff),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
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
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/welcome-four.png"),
                  radius: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Finding your path",
                    style: TextStyle(
                      color: Colors.black38
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Text("Why do you want to learn to code?",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(

                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
