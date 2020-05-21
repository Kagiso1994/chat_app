import 'package:chatapp/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn(this.toggle);
  @override
  _SignInState createState() =>_SignInState();
}

  class _SignInState extends State<SignIn> {
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: appBarMain(context),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 60,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child:Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    style: textStyle(),
                    decoration: textFieldInputDecoration("email"),
                  ),
                  TextField(
                    style: textStyle(),
                    decoration: textFieldInputDecoration("password"),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                        child: Text("Forgot Password?", style: textStyle(),),
                      ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff007EF4),
                          const Color(0xff2A75BC),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Sign In",style: mediumTextStyle(),),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Sign In With Google",style:TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                    ),),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: mediumTextStyle(),),
                      GestureDetector(
                        onTap: (){
                          widget.toggle();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text("Register now", style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            decoration: TextDecoration.underline
                          ),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),



                ],

              )
            ),
          ),
        ),

      );
    }
  }



