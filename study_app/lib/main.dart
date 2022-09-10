import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study_app/data_uploader_screen.dart';
import 'package:study_app/firebase_options.dart';
import 'package:study_app/screen/introduction/introduction.dart';
import 'package:study_app/screen/splash/splash_screen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'dart:ffi';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(home: DataUploaderScreen()));
//
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AppIntroductionScreen());
  }
}
