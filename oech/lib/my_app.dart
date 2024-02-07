import 'package:flutter/material.dart';
import 'package:oech/pages/loginIn_page.dart';
import 'package:oech/pages/signup_page.dart';
import 'package:supabase/supabase.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}