import 'package:flutter/material.dart';

class TerminalWidget extends StatefulWidget {
  @override
  _TerminalWidgetState createState() => _TerminalWidgetState();
}

class _TerminalWidgetState extends State<TerminalWidget> {
  final TextEditingController _controller = TextEditingController();
  String _output = '';

  void _executeCommand() {
    final command = _controller.text;
    // Integrate with Ollama to execute the command
    // ...existing code...
    setState(() {
      _output += '\n\$ $command\nExecuted command output...';
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Text(_output),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter command',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (value) => _executeCommand(),
                ),
              ),
              SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: _executeCommand,
                child: Text('Run'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
