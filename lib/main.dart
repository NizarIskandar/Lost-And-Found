import 'package:flutter/material.dart';
import 'login_page.dart';
import 'settings.dart';
import 'splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  const FirebaseOptions(
      apiKey: "AIzaSyAl9BGKD62aEA1jX5_9hYGqe6eLY-qXq-0", 
      appId: "1:575096738084:android:8e94e516322fafb8cce3b1", 
      messagingSenderId: "575096738084", 
      projectId: "flutter-990bd",
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
    
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/settings': (context) => const Settings(),
          '/login': (context) =>  const LoginPage(), // Route to the Settings page
      },
    );
  }
}
