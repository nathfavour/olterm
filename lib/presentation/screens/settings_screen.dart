import 'package:flutter/material.dart';
import '../../widgets/common/custom_text_field.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              label: 'API Key',
              onChanged: (value) {
                // Handle API Key change
              },
            ),
          ],
        ),
      ),
    );
  }
}
