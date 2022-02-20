import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procoder/loginandsignin/loginpage.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final golbalkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showpassword = false;
  IconData passwordIcon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFffffff),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
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
                          child: Icon(Icons.arrow_back, color: Colors.black,)),
                    ],
                  ),
                  Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/4.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Form(
                    key: golbalkey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),

                            ),
                            controller: nameController,
                            validator: (value) {
                              if(value! =='a-z' && value=='A-Z'){
                                return null;
                              }
                              else{
                                return "Name is not correct";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'Email'
                            ),
                            controller: emailController,
                            validator: (value) {
                              var pattern = RegExp(r"^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$");
                              if(pattern.hasMatch(value!)){
                                return null;
                              }
                              else{
                                return "Email adress is not correct";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                labelText: 'Password',
                                suffixIcon: GestureDetector(child:
                                Icon(passwordIcon),onTap: (){
                                  setState((){
                                    showpassword == true ? showpassword =false : showpassword = true;
                                    passwordIcon == Icons.visibility_off ?
                                    passwordIcon = Icons.visibility : passwordIcon = Icons.visibility_off;
                                  });
                                },),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )
                            ),
                            controller: passwordController,
                            obscureText: showpassword ? false : true,
                            maxLines: 1,
                            validator: (value) {
                              if(value!.length >= 8 && value.length <= 15){
                                return null;
                              }
                              else{
                                return "Password must be in between 8 to 15 characters long";
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
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
            ),
          )
        )
    );
  }
}
