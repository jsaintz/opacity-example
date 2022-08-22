import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _visible = true;

  void _toggleVisible() {
    setState(() {
      _visible = !_visible!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Example'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Opacity(opacity: _visible! ? 1.0 : 0.2, child: const Text('Now you see me now you don\'t!')),
              ElevatedButton(
                onPressed: _toggleVisible,
                child: const Text('Toggle'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
