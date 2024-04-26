import 'package:flutter/material.dart';

class ColorComponent extends StatelessWidget {
  String colorName;

  ColorComponent({
    super.key,

    required this.colorName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 110,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 14,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(colorName),
          ],
        ),
      ),
    );
  }
}
