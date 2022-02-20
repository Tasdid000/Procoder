import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/loginandsignin/login_and_signin_page.dart';

class splashpage extends StatefulWidget {
  const splashpage({Key? key}) : super(key: key);

  @override
  _splashpageState createState() => _splashpageState();
}

class _splashpageState extends State<splashpage> {
  List<String> image = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
    'welcome-four.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: image.length,
              itemBuilder: (context, index) =>
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                            "images/${image[index]}"
                        ),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 660),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => login_and_signin_page(),));
                            },
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
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Center(child: Text("LET's START LEARNING",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
          ),
        )
    );
  }
}
