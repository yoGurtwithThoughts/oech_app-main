import 'package:flutter/material.dart';
import 'package:oech/main.dart';
import 'package:oech/widgets/text_field_widget.dart';
import 'package:supabase/supabase.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _fullnameController=TextEditingController();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
 late TextEditingController _confirmPasswordController=TextEditingController();
  late TextEditingController _phoneNumberController =TextEditingController();
  bool isLoading = false;

  /// [userLogin] 
  Future<String?> userLogin({
    required final String email,
    required final String password,
    required final String phone_number,
    required final String confirmPassword,
    required final String full_name,
  }) async {
    final AuthResponse res = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
      phone: phone_number,
      full_name: full_name,
    );
   

    final user = res.user;
    return user?.id;
    }
   
  @override
  void initState() {
    super.initState();
    _confirmPasswordController=TextEditingController();
     _passwordController=TextEditingController();
     _emailController=TextEditingController();
      _phoneNumberController=TextEditingController();

  }
  Widget build(BuildContext context) {
    return  Scaffold(                        
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
                isObsText: true,
                  controller: _fullnameController,
                  textTitle: 'Full name',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    
                     hintText: 'ivanov ivan',
                     ),

                  TextFieldWidget(
                    isObsText: true,
                    controller: _phoneNumberController,
                  textTitle: 'Phone Number',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    
                     hintText: '+7(999)999-99-99',
                     ),

                  TextFieldWidget(
                    isObsText: true,
                    
                  textTitle: 'Email Address',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                
                     hintText: '***********@mail.com',
                     ),  

                  TextFieldWidget(
                     isObsText: true,
                  controller: _passwordController,
                  textTitle: 'Password',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    
                     hintText: '**********',
                     ),    

                 TextFieldWidget(
                   isObsText: true,
                  controller: _confirmPasswordController,
                  textTitle: 'Confirm Password',
                   textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    
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
