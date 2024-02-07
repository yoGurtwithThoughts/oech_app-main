import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:oech/main.dart';
import 'package:oech/pages/signUp_page.dart';
import 'package:oech/widgets/text_field_widget.dart';
import 'package:supabase/supabase.dart';

class ForgotPasswordPage extends StatefulWidget{
  const ForgotPasswordPage({super.key});
  @override
  State<ForgotPasswordPage> createState()=> _ForgotPasswordPageState();
}
class _ForgotPasswordPageState extends State<ForgotPasswordPage>{
  @override
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  Widget build (BuildContext context){
    return const Scaffold(
       body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 70),
        child: SizedBox(
          width: 310,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
                
                Text('Enter your email address',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(167, 167, 167, 1)
                )),
                
                SizedBox(height: 18),
               TextFieldWidget(
               textTitle: 'Email Adress',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 10,
                     hintText: '************@gmail.com',
                     ),
              ]
                  
          
    ),

              
            ),
          ),
      )
      );
  }
  
}