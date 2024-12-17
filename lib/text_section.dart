import 'package:flutter/material.dart';

class TextSection extends StatefulWidget {
  TextSection({
    super.key,
    required this.description,
    required this.clickCounter
  });

  String description;
  int clickCounter;
  @override
  State<TextSection> createState() => _TextSection();
}

class _TextSection extends State<TextSection>{
  String _description="";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        widget.description,
        softWrap: true,
      ),
    );
  }

  void updateText(){
    setState(() {
      _description = widget.description + widget.clickCounter.toString();
    });
  }
}