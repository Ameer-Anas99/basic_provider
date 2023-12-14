import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';
import 'package:provider_tutorial/view/changepages/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 110,
              child: FloatingActionButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => page2(),
                        ),
                      ),
                  child: Text("Press")),
            ),
            Text(Provider.of<ProviderNotifier>(context).provider),
            Container(
              height: 100,
              width: 110,
              child: FloatingActionButton(
                onPressed: () {
                  Provider.of<ProviderNotifier>(context, listen: false)
                      .changevalue();
                },
                child: Text("Change Value"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
