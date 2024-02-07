import 'package:flutter/material.dart';
import 'package:oech/widgets/text_field_widget.dart';
import 'package:oech/pages/signUp_page.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(                        
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 170),
        child: SizedBox(
          width: 310,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Text('Welcome Back',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
                
                Text('Fill in your email and password to continue',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(167, 167, 167, 1)
                )),
                
                SizedBox(height: 18),
                TextFieldWidget(
                 controller: _emailController.text,
                  textTitle: 'Email Address',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 40,
                     hintText: '***********@mail.com',
                     ),  

                  TextFieldWidget(
                    controller: _passwordController.text,
                  textTitle: 'Password',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 40,
                     hintText: '**********',
                     ),    

                ],
              
            ),
          ),
      )
      ),
    );
  }
}