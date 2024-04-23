import 'package:flutter/material.dart';
import 'package:multipleproviderexone/silder.dart';
import 'package:provider/provider.dart';

import 'multiprovider1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => countmulclass()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: provedexmple5(), // Replace YourHomePageWidget with your actual home page widget
        ),




    );
  }


}
