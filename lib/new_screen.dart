import 'package:first/providers/new_provider.dart';
import 'package:first/providers/proxyy.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("build new screen");

    final newnotefier = Provider.of<Newnote>(context, listen: false);
    //final doubleincremen = Provider.of<Doubleincrement>(context , listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text('New Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Selector<CounterProvider, int>(
            //   selector: (context, provider) => provider.counter,
            //   builder: (context, counter, child) {
            //     print("incrimenter called");

            //     return Text(
            //       'Counter Value: $counter',
            //       style: TextStyle(fontSize: 24),
            //     );
            //   },
            // ),
            SizedBox(height: 10),
            Selector<Newnote, int>(
              selector: (context, provider) => provider.random,
              builder: (context, xyz, child) {
                return Text(
                  'Counter Value of new notefier: $xyz',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 10),
            Selector<Doubleincrement, int>(
              selector: (context, provider) => provider.val,
              builder: (context, val, child) {
                print("double increment called");
                return Text(
                  'Double Counter Value: $val',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // counter.increment();
                  },
                  child: Text("Increment"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    newnotefier.randomInc();
                  },
                  child: Text("Decrement"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
