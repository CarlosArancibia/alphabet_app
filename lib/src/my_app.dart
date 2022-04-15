import 'package:flutter/material.dart';
import 'package:alphabet_app/src/pages/alphabet_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlphabetPage(),
    );
  }
}
