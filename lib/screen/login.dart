import 'package:first/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    print("build login screen");
    final counter = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                counter.change();
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const NewScreen(),
                //   ),
                // );
              },
              child: const Text('Login'),
            ),
            Selector<CounterProvider, bool>(
              selector: (context, provider) => provider.isloding,
              builder: (context, value, child) {
                return value ? CircularProgressIndicator() : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
