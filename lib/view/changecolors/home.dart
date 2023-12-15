import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Consumer<ProviderNotifier>(
          builder: (context, value, child) => Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: value.circleAvatarColor,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  value.pink();
                },
                child: Text("Pink Button"),
              ),
              ElevatedButton(
                onPressed: () {
                  value.purple();
                },
                child: Text("Purple Button"),
              ),
              ElevatedButton(
                  onPressed: () {
                    value.yellow();
                  },
                  child: Text('Yellow'))
            ],
          ),
        ),
      ),
    );
  }
}
