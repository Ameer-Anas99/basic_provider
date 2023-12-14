import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';
import 'package:provider_tutorial/view/changepages/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page2',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
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
                          builder: (context) => page3(),
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
            )
          ],
        ),
      ),
    );
  }
}
