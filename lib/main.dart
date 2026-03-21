import 'package:flutter/material.dart';
import 'apps/task1/tap_demo.dart';
import 'apps/task2/double_tap_color.dart';
import 'apps/task3/long_press_card.dart';
import 'apps/task4/tap_counter.dart';
import 'apps/task5/pointer_coordinates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTLT3 Gesture Exercises',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BTLT3 - Gesture Exercises')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Sinh viên: Le Thai Bao - MSSV: 6451071003', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _navButton(context, '1. Tap cơ bản (Tap Demo)', const TapDemoPage()),
            _navButton(context, '2. Double Tap đổi màu', const DoubleTapColorPage()),
            _navButton(context, '3. Long Press hiển thị thông báo', const LongPressCardPage()),
            _navButton(context, '4. Đếm số lần Tap', const TapCounterPage()),
            _navButton(context, '5. Pointer Events cơ bản', const PointerCoordinatesPage()),
          ],
        ),
      ),
    );
  }

  Widget _navButton(BuildContext context, String label, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => page)),
        child: Text(label),
      ),
    );
  }
}
