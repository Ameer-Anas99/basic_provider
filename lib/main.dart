import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';
import 'package:provider_tutorial/view/changecolors/home.dart';
import 'package:provider_tutorial/view/counter/counterui.dart';
import 'package:provider_tutorial/view/changepages/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // page1(),
            // counterapp(),
            HomeScreen(),
      ),
    );
  }
}
