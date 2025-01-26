import 'package:flutter/material.dart';
import '../widgets/terminal_widget.dart';

class TerminalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terminal'),
      ),
      body: TerminalWidget(),
    );
  }
}
