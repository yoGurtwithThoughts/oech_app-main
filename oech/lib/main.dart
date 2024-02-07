import 'package:flutter/material.dart';
import 'package:oech/my_app.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://wquxefmpfiphpiunbxtf.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndxdXhlZm1wZmlwaHBpdW5ieHRmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcyNjk0OTQsImV4cCI6MjAyMjg0NTQ5NH0.BBziOz4wLOSw1NQMQcd7te0EUmJkHzZ0z8RtEFFl3YA',);
  runApp(const MyApp());
}
 final supabase = Supabase.instance.client; 