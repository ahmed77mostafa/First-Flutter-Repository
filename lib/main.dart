import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teslaapi/providers/api_provider.dart';
import 'package:teslaapi/screens/tesla_articles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => TeslaProvider(),
          child: TeslaArticles(),
      )
      );
  }
}