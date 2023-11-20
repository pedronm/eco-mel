import "package:flutter/material.dart";

class ContentCard extends StatefulWidget {
  final Widget content;

  const ContentCard({Key? key, required this.content}) : super(key: key);

  @override
  State<ContentCard> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  @override
  Widget build(BuildContext context) {
    return widget.content;
  }
}
