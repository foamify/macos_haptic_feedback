import 'package:flutter/material.dart';
import 'package:macos_haptic_feedback/macos_haptic_feedback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _macosHapticFeedback = MacosHapticFeedback();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...[
              (
                function: _macosHapticFeedback.generic,
                text: 'Generic',
              ),
              (
                function: _macosHapticFeedback.alignment,
                text: 'Alignment',
              ),
              (
                function: _macosHapticFeedback.levelChange,
                text: 'Level Change',
              )
            ].map((e) => Container(
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  color: Colors.blueAccent,
                  child: MouseRegion(
                    onEnter: (event) {
                      e.function();
                    },
                    onExit: (event) {
                      e.function();
                    },
                    child: Center(child: Text(e.text)),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
