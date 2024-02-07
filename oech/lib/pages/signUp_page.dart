import 'package:flutter/material.dart';
import 'package:oech/widgets/text_field_widget.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
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
                  Text('Create an account',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
                
                Text('Complete the sign up process to get started',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(167, 167, 167, 1)
                )),
                
                SizedBox(height: 18),

                 TextFieldWidget(
                  textTitle: 'Full name',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 10,
                     hintText: 'ivanov ivan',
                     ),

                  TextFieldWidget(
                  textTitle: 'Phone Number',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 40,
                     hintText: '+7(999)999-99-99',
                     ),

                  TextFieldWidget(
                  textTitle: 'Email Address',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 40,
                     hintText: '***********@mail.com',
                     ),  

                  TextFieldWidget(
                  textTitle: 'Password',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                     height: 40,
                     hintText: '**********',
                     ),    

                 TextFieldWidget(
                  textTitle: 'Confirm Password',
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