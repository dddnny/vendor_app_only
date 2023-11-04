import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vendor_app_only/vendor/views/auth/vendor_auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
              apiKey: "AIzaSyAQiii3-DPCgKz3-iA2lwUKPvVsTpkvzos",
              authDomain: "eman-rent-shop.firebaseapp.com",
              projectId: "eman-rent-shop",
              storageBucket: "eman-rent-shop.appspot.com",
              messagingSenderId: "967641649670",
              appId: "1:967641649670:web:b587347bc1e6130b986987")
          : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: VendorAuthScreen(),
      builder: EasyLoading.init(),
    );
  }
}
