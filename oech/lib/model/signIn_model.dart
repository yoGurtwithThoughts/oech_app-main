// import 'package:flutter/material.dart';
// import 'package:oech/main.dart';
// import 'package:supabase/supabase.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// class SignInPage extends StatefulWidget{
//   const SignInPage({super.key});
//   @override
// State<SignInPage> createState()=> _SignUpPageState();
// }
// class _SignUpPageState extends StatelessWidget{
//    final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool isLoading = false;

//   /// [userLogin] 
//   Future<String?> userLogin({
//     required final String email,
//     required final String password,
//   }) async {
//     final AuthResponse res = await supabase.auth.signInWithPassword(
//       email: email,
//       password: password,
//     );
   

//     final user = res.user;
//     return user?.id;
  
//   @override
//   dynamic loginValue = await userLogin(
//                   email: _emailController.text, 
//                   password: _passwordController.text);
//                   setState(() {
//                     isLoading = false;
//                   });
//                   if (loginValue != null) {
//                     Navigator.pushReplacementNamed(context, '/simpleapp');
//                   } else {
//                     context.showErrorMessage('Invalid Email or Password!');
//                   } 
//                }
               
//                }