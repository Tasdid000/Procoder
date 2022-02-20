import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'how_much_ will _i_learn.dart';

class why_use_procoder extends StatefulWidget {
  const why_use_procoder({Key? key}) : super(key: key);

  @override
  _why_use_procoderState createState() => _why_use_procoderState();
}

class _why_use_procoderState extends State<why_use_procoder> {
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
                Text("Why use Procoder?",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("In 10 minutes or less per day, Procoder \n"
                    "will keep your coding skill sharp, introduce \n"
                    "Python concepts, and help you level up \n"
                    "your career or discover new paths on your \n"
                    "coding journey \n",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => how_much_will_i_learn()));
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
