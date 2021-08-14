import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/login_image.PNG",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 28),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter UserName", labelText: "UserName"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    print(changeButton);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    alignment: Alignment.center,
                    height: 50,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 10)),
                  )),

              // ElevatedButton(
              //     onPressed: () {
              //       print("hello therer");
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: Text("Login"),
              //     style: TextButton.styleFrom(minimumSize: Size(150, 40))),
            ],
          ),
        )));
  }
}
