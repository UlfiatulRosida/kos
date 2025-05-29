import 'package:flutter/material.dart';
import 'package:kos/pages/login_page.dart';
import 'package:kos/pages/home_page.dart';
import 'package:kos/pages/add_page.dart';
import 'package:kos/pages/detail_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const String supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2d21jbWhnempnemR4Ynl6aWx0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUyMjAwMTQsImV4cCI6MjA2MDc5NjAxNH0.pNBrQsyIdWrCUkdfMzn-K8BACKnwO_m0hFKB-yXgrBI';

Future<void> main() async {
  await Supabase.initialize(
      url: 'https://yvwmcmhgzjgzdxbyzilt.supabase.co', anonKey: supabaseKey);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/add': (context) => const AddPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
