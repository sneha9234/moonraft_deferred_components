import 'package:flutter/material.dart';
import 'box.dart' deferred as box;

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<void> _libraryFuture;

  @override
  void initState() {
    _libraryFuture = box.loadLibrary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _libraryFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          return box.DeferredBox();
        }
        return const CircularProgressIndicator();
      },
    );
  }
}