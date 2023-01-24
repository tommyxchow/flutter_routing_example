import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Named Routes Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define the routing table, which contains a mapping of route string names to their corresponding widget destinations.
      routes: {
        // When navigating to the "/" route, build the HomeScreen widget.
        '/': (context) => const HomeScreen(),
        // When navigating to the "/settings" route, build the SettingsScreen widget.
        '/settings': (context) => const SettingsScreen(),
      },
      initialRoute: '/',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              child: const Text('Go to Settings'),
            )
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
