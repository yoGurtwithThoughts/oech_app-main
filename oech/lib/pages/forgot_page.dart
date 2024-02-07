
import 'package:flutter/material.dart';
import 'package:oech/widgets/btn_widget.dart';
import 'package:oech/widgets/text_field_widget.dart';

class ForgotPasswordPage extends StatefulWidget{
  const ForgotPasswordPage({super.key});
  @override
  State<ForgotPasswordPage> createState()=> _ForgotPasswordPageState();
}
class _ForgotPasswordPageState extends State<ForgotPasswordPage>{

  bool checkedValue = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
@override
  
  Widget build (BuildContext context){
    return  Scaffold(
       body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 170, right: 0.75),
        child: SizedBox(
          width: 315,
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
                
            const SizedBox(height: 18),
               TextFieldWidget(
               textTitle: 'Email Adress',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '************@gmail.com',
                     ),
              const SizedBox(height: 30),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 25),
                 child:   SizedBox(
                    child: ButtonWidget(
                        buttonName: 'Send OTP',
                        buttonColor: const Color.fromRGBO(167, 167, 167, 1),
                        onTap: () {},
                      ),
                    ),
                    ),
                  ],
                
                ),
            
              ],
          ),
 ),
          ),
          
      ),
      );
  }
  
}