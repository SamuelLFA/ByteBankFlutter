import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController _controller;
  final String _labelText;
  final String _hint;
  final IconData _icon;

  const Editor({Key key, controller, labelText, hint, icon})
      : _controller = controller,
        _labelText = labelText,
        _hint = hint,
        _icon = icon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
      child: TextField(
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
            labelText: _labelText,
            hintText: _hint,
            icon: _icon != null ? Icon(_icon) : null),
        keyboardType: TextInputType.number,
        controller: _controller,
      ),
    );
  }
}
