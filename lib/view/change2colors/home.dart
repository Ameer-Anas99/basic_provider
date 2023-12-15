import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderNotifier>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: value.colors[value.currentIndex],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: () {
                value.color();
              })
            ],
          ),
        ),
      ),
    );
  }
}
