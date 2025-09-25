import 'package:first/providers/new_provider.dart';
import 'package:first/new_screen.dart';
import 'package:first/providers/provider.dart';
import 'package:first/providers/proxyy.dart';
import 'package:first/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => Newnote()),
        // ProxyProvider<CounterProvider, Doubleincrement>(
        //   update: (context, value, previous) {
        //     return Doubleincrement(value.counter * 2);
        //   },
       // ),
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home:LoginScreen());
  }
}
