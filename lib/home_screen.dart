import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Number:  $number"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => numberIncrease(),
        child: const Icon(Icons.add),
      ),
    );
  }

  numberIncrease() {
    setState(() {
      number = number + 1;
    });
  }
}
