import 'package:ecomel/themes/tema_eco_mel.dart';
import 'package:flutter/material.dart';
import 'package:ecomel/models/models.dart';

class UserNav extends StatelessWidget {
  final UserData user;
  final double radius;
  final ImageProvider image;

  const UserNav(
      {Key? key, required this.user, required this.radius, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 8, left: 16, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(255, 170, 2, 100),
              radius: radius,
              child: CircleAvatar(radius: radius - 5, backgroundImage: image),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mauro Lima',
                    style: TemaEcoMel.lightTextTheme.headlineMedium),
                Text('R\$ -------',
                    style: TemaEcoMel.lightTextTheme.headlineSmall),
                const Icon(Icons.remove_red_eye_outlined),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.settings),
              ],
            ),
          ],
        ));
  }
}
