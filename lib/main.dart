import 'package:capstone_web_admin_panel_carpool/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBidebPqzBY2V_1vXnH09qLZre5TecFQQU",
        authDomain: "capstonecarpool-83955.firebaseapp.com",
        databaseURL: "https://capstonecarpool-83955-default-rtdb.firebaseio.com",
        projectId: "capstonecarpool-83955",
        storageBucket: "capstonecarpool-83955.appspot.com",
        messagingSenderId: "490595506829",
        appId: "1:490595506829:web:a5bbf37c0e236afab1e0c4",
        measurementId: "G-935GNKRS3B"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SideNavigationDrawer(),
    );
  }
}
