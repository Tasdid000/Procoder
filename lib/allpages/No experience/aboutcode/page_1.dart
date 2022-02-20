import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/allpages/No%20experience/aboutcode/what_is_code.dart';

class page_1 extends StatefulWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  _page_1State createState() => _page_1State();
}

class _page_1State extends State<page_1> {
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
                    Text("No experience, no problem.",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Anyone can learn to code. In just 5 minutes ",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("or less per day, Procoder will teach you",
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text( "how to code from the ground up.",
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
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => what_is_code()));
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
