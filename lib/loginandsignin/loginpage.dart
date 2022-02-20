import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final globalkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showpassword = false;
  IconData passwordIcon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 20,
              ),
              Text("Hi, We are glad to see you back",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 17
                ),
              ),
              SizedBox(
                height: 20,
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
                key: globalkey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
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
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                     TextButton(onPressed: (){},
                        child: Text("FORGOT?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15
                          ),
                        )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I don't have an account.",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                  },
                      child: Text("Sing Up",
                        style: TextStyle(
                            color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
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
      ),
    );
  }
}
