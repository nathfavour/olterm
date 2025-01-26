import 'package:flutter/material.dart';
import '../../widgets/common/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: CustomButton(
          text: 'Open Terminal',
          onPressed: () {
            // Navigate to Terminal Screen
          },
        ),
      ),
    );
  }
}
