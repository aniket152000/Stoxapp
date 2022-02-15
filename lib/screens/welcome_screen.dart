import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stoxdata/screens/register_screen.dart';
import 'package:stoxdata/screens/login_screen.dart';


class WelcomeScreen extends StatefulWidget {
  static String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[

                  // Flexible(
                  //   child: TypewriterAnimatedTextKit(
                  //     text:['Aniket Chat'],
                  //     textStyle: TextStyle(
                  //       color: Colors.blueGrey,
                  //       fontSize: 50.0,
                  //       fontWeight: FontWeight.w900,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0) ,
                color: Colors.black,
                child: MaterialButton(
                  child: Text('Log In',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  ),
                  height: 50.0,
                  onPressed: (){
                      Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Material(
                borderRadius: BorderRadius.circular(20.0) ,
                color: Colors.black,
                child: MaterialButton(
                  child: Text('Register',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  ),
                  height: 50.0,
                    onPressed:(){
                        Navigator.pushNamed(context, RegistrationScreen.id);
                    }
                ),
              ),
                 Padding(
                  padding:EdgeInsets.only(top: 30.0),
                  child: Expanded(
                    child: Column(
                      children:<Widget> [
                        Text( 'Designed and Developed by ',
                        style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Text('Aniket Ghare',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        ),
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

