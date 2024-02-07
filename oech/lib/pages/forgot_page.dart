
import 'package:flutter/material.dart';
import 'package:oech/main.dart';
import 'package:oech/widgets/btn_widget.dart';
import 'package:oech/widgets/text_field_widget.dart';
import 'package:supabase/supabase.dart';
import 'package:oech/my_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
 
 void main(email) async {
  
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://wquxefmpfiphpiunbxtf.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndxdXhlZm1wZmlwaHBpdW5ieHRmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcyNjk0OTQsImV4cCI6MjAyMjg0NTQ5NH0.BBziOz4wLOSw1NQMQcd7te0EUmJkHzZ0z8RtEFFl3YA',);
 

  final response = await supabase.auth.resetPasswordForEmail(email);
}
 final supabase = Supabase.instance.client; 
class ForgotPasswordPage extends StatefulWidget{
  const ForgotPasswordPage({super.key});
 
 @override
  
  State<ForgotPasswordPage> createState()=> _ForgotPasswordPageState();
}
class _ForgotPasswordPageState extends State<ForgotPasswordPage>{
final TextEditingController _emailController = TextEditingController();
  bool _isButtonEnabled = false;


  
  
@override
  void initState() {
    super.initState();
     _emailController.addListener(_onTextChanged);}
   
    
  void _onTextChanged() {
    setState(() {
      _isButtonEnabled = _isValidEmail(_emailController.text);
    });
  }
  bool _isValidEmail(String email) {
    
    return email.contains('@');
  }
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
                controller: _emailController,
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
                        buttonColor:_isButtonEnabled ?  Color.fromRGBO(167, 167, 167, 1): Colors.indigo,
                        onTap:  () {}, 
              
                 
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