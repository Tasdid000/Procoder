import 'package:flutter/material.dart';
import '../../find_your_path.dart';

class why_learn_to_code extends StatefulWidget {
  const why_learn_to_code({Key? key}) : super(key: key);

  @override
  _why_learn_to_codeState createState() => _why_learn_to_codeState();
}

class _why_learn_to_codeState extends State<why_learn_to_code> {
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
                Text("Why should I learn to code?",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Perhaps you have an idea you'd like to make \n"
                    "a reality, or are looking to take the next step \n"
                    "in your career, or maybe you are just \n"
                    "curious. Learning to code can help you \n"
                    "open up new paths and opportunities. \n",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset("images/welcome-three.png"),
                SizedBox(
                  height: 140,
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
