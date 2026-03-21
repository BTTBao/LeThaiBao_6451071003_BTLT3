import 'package:flutter/material.dart';

class TapCounterPage extends StatefulWidget {
  const TapCounterPage({super.key});

  @override
  State<TapCounterPage> createState() => _TapCounterPageState();
}

class _TapCounterPageState extends State<TapCounterPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đếm số lần Tap')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Tap count: $_count', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Tap Here'),
            ),
          ],
        ),
      ),
    );
  }
}
