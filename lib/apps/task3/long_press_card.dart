import 'package:flutter/material.dart';

class LongPressCardPage extends StatelessWidget {
  const LongPressCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Long Press thông báo')),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Long press detected')),
            );
          },
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 36),
              child: Text('Press and hold me', style: TextStyle(fontSize: 18)),
            ),
          ),
        ),
      ),
    );
  }
}
