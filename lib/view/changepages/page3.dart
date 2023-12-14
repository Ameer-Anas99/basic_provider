import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';
import 'package:provider_tutorial/view/changepages/page1.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page3',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
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
                    builder: (context) => page1(),
                  ),
                ),
                child: Text('Press'),
              ),
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
