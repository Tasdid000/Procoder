import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/allpages/No%20experience/aboutcode/why_learn_to_code.dart';

class what_is_programming extends StatefulWidget {
  const what_is_programming({Key? key}) : super(key: key);

  @override
  _what_is_programmingState createState() => _what_is_programmingState();
}

class _what_is_programmingState extends State<what_is_programming> {
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
                        child: Icon(Icons.arrow_back, color: Color(0xFF9caaf5),)),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text("What is a programming language?",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("A programming language is used to give \n"
                    "computers instructions. There are many \n"
                    "types of programming languages, just like \n"
                    "there are many spoken language.",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Procoder teaches Python, used by \n"
                    "over 70% of professional coders. It can \n"
                    "create AI, problem solving and much more.",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("images/welcome-three.png"),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => why_learn_to_code()));
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
