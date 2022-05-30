import 'package:aklat/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.orange ,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              height: MediaQuery.of(context).size.height*.2 ,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image(
                      image: AssetImage('images/burgericon.png'),

                  ),
                  Positioned(
                   bottom: 0,
                   child: Text(
                    'AKLAT',
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height*.1 ,
          ),
          CustomTextField(
            hint: 'Enter your email',
            icon: Icons.email,
          ),
          SizedBox(
            height: height*.2 ,
          ),
          CustomTextField(
              icon: Icons.lock,
              hint: 'Enter your password',
          ),
          SizedBox(
            height: height*.1 ,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:120 ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              onPressed: (){},
              color: Colors.black,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),

          ),
          SizedBox(
            height: height*.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Don\'t have an account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignupScreen.id);
                },
                child: Text('Sign up',
                style: TextStyle(
                  fontSize: 16,
                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


