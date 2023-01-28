import 'dart:html';

import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
      ),
      body: Container(
        child: Row(
          children: [
            ElevatedButton(
              child: Text('Elevated Button'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}