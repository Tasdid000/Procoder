import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/allpages/some%20experience/learn_code.dart';

import 'No experience/aboutcode/page_1.dart';
import 'a lot of experience/keep_your_skill_fresh.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text("How much experience do you have",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Text("with coding so far?",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page_1(),));
                  },
                  child: SizedBox(
                    height:160,
                    width: 320,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/3.png"),
                          Text("No experience")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => learn_code(),));
                  },
                  child: SizedBox(
                    height:160,
                    width: 320,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/3.png"),
                          Text("Some experience")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => keep_your_skill_fresh(),));
                  },
                  child: SizedBox(
                    height:160,
                    width: 320,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/3.png"),
                          Text("A lot of experience")
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
