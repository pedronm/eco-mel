import "package:flutter/material.dart";

class InfoCard extends StatefulWidget {
  final List<Widget> infos;

  const InfoCard({Key? key, required this.infos}) : super(key: key);

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 14, bottom: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ));
  }
}
