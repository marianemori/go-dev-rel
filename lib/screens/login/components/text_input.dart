import 'package:flutter/material.dart';

class TextInputComponent extends StatefulWidget {
  final String? hint;

  const TextInputComponent({
    Key? key,
    this.hint,
  }) : super(key: key);

  @override
  State<TextInputComponent> createState() => _TextInputComponentState();
}

class _TextInputComponentState extends State<TextInputComponent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}
