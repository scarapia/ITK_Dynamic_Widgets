import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      obscureText: false,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        
      ),
    );
  }
}
