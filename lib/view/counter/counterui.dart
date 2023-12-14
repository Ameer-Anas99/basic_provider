import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/controller/provider.dart';

class counterapp extends StatefulWidget {
  const counterapp({super.key});

  @override
  State<counterapp> createState() => _counterappState();
}

class _counterappState extends State<counterapp> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final counterData = Provider.of<ProviderNotifier>(context, listen: false);
    print('Running my app');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<ProviderNotifier>(builder: (context, data, _) {
              return Text(
                data.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 160),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: counterData.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () => counterData.decrement(),
              tooltip: "remove",
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
