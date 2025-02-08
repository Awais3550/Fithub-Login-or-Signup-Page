import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/login_page.dart' as login; // Alias for login_page import
import 'screens/signup_page.dart' as signup; // Alias for signup_page import

void main() async {
  // Ensures that widget binding is initialized before Firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  await Firebase.initializeApp();

  // Run the app after Firebase is initialized
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const login.LoginPage(), // Use alias here
        '/signup': (context) => const signup.SignupPage(), // Use alias here
      },
    );
  }
}
