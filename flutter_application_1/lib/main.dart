import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/home_provider.dart';
import 'package:flutter_application_1/screens/home_page/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
