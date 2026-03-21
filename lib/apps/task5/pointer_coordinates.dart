import 'package:flutter/material.dart';

class PointerCoordinatesPage extends StatefulWidget {
  const PointerCoordinatesPage({super.key});

  @override
  State<PointerCoordinatesPage> createState() => _PointerCoordinatesPageState();
}

class _PointerCoordinatesPageState extends State<PointerCoordinatesPage> {
  Offset _position = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pointer Events cơ bản')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Listener(
              onPointerDown: (details) {
                setState(() {
                  _position = details.localPosition;
                });
              },
              child: Container(
                width: 300,
                height: 300,
                color: Colors.amber.shade100,
                alignment: Alignment.center,
                child: const Text('Tap vào đây để xem tọa độ'),
              ),
            ),
            const SizedBox(height: 16),
            Text('Toạ độ: x=${_position.dx.toStringAsFixed(1)}, y=${_position.dy.toStringAsFixed(1)}', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
