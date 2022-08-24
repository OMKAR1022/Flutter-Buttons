import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: button(),
    );
  }
}

class button extends StatefulWidget {
  const button({Key? key}) : super(key: key);

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              child: TextButton(
                onPressed: () {
                  print('textbutton');
                },
                child: const Text('omkar'),
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              child: IconButton(
                onPressed: () {
                  print('iconbutton');
                },
                icon: const Icon(Icons.ac_unit),
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              child: TextButton.icon(
                onPressed: () {
                  print('textbuttonicon');
                },
                icon: const Icon(Icons.ac_unit),
                label: const Text('omkar'),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                print('floatingactionbutton');
              },
              child: Text('omkar'),
            ),
          ],
        ),
      ),
    );
  }
}
