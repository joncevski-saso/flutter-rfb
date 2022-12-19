import 'package:flutter/material.dart';
import 'package:flutter_rfb/flutter_rfb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter RFB Example'),
          ),
          body: Center(
            child: InteractiveViewer(
              constrained: true,
              maxScale: 10,
              // minScale: 0.1,
              child: const RemoteFrameBufferWidget(
                hostName: '127.0.0.1',
              ),
            ),
          ),
        ),
      );
}
