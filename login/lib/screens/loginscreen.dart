import 'package:flutter/material.dart';

import 'signup_screen.dart';
class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextStyle style = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
          keyboardType:TextInputType.emailAddress,
          obscureText: false,
          style: style,
          controller: emailController,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
        );
        final passwordField = TextField(
          obscureText: true,
          style: style,
          controller: passwordController,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
        );
        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).primaryColor,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );
    return Scaffold(
      //the area we are working on
      body: Center(
        child:SingleChildScrollView(
                  child: Container(
            color: Colors.white,
            child: Padding(padding:EdgeInsets.all(36.0),
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 SizedBox(
                        height: 155.0,
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                        SizedBox(height: 45.0),
                     emailField,
                      SizedBox(height: 20.0),
                    passwordField,
                     SizedBox(
                        height: 35.0,
                      ),
                      loginButon,
                      SizedBox(
                        height: 15.0),
                   Row(
                    children: <Widget>[
                      Text('Dont have an account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),
                        ),
                        onPressed: () {
                         Navigator.of(context).pushNamed(Signup.signuproute);
                        },
                      )
                    ],
                   mainAxisAlignment: MainAxisAlignment.center,
                )
               ],
             ) ,),
            
          ),
        ) ,),
      
    );
  }
}