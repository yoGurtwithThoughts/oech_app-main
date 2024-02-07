// import 'package:flutter/material.dart';
// import 'package:supabase/supabase.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// void registerUser(String email, String password, String fullName, String confirmPassword, String phoneNumber) async {
//   // Инициализация Supabase клиента
//   const supabaseUrl = 'https://wquxefmpfiphpiunbxtf.supabase.co';
// const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndxdXhlZm1wZmlwaHBpdW5ieHRmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcyNjk0OTQsImV4cCI6MjAyMjg0NTQ5NH0.BBziOz4wLOSw1NQMQcd7te0EUmJkHzZ0z8RtEFFl3YA';
//   final supabase = SupabaseClient(supabaseUrl, supabaseKey);

//   // Проверка совпадения паролей
//   if (password != confirmPassword) {
//     throw Exception('Passwords do not match');
//   }

//   // Регистрация пользователя
//   final response = await supabase.auth.signUp(email, password, data: {
//     email: email,
//     full_name: fullName,
//     phone_number: phoneNumber,
//   password: password});

//   if (response.error != null) {
//     throw Exception(response.error.message);
//   }

//   print('User registered successfully');
// }