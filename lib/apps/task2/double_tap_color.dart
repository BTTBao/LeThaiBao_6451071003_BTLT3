import 'package:flutter/material.dart';

class DoubleTapColorPage extends StatefulWidget {
  const DoubleTapColorPage({super.key});

  @override
  State<DoubleTapColorPage> createState() => _DoubleTapColorPageState();
}

class _DoubleTapColorPageState extends State<DoubleTapColorPage> {
  Color _boxColor = Colors.blue;

  void _toggleColor() {
    setState(() {
      _boxColor = _boxColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Double Tap đổi màu')),
      body: Center(
        child: GestureDetector(
          onDoubleTap: _toggleColor,
          child: Container(
            width: 170,
            height: 170,
            color: _boxColor,
            alignment: Alignment.center,
            child: const Text('Double Tap', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
