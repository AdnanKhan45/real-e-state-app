import 'package:flutter/material.dart';
import 'package:real_estate/utils/constants.dart';
import 'package:real_estate/utils/widgets_functions.dart';

class OptionButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButtonWidget({Key? key, required this.text, required this.icon, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: COLOR_WHITE,
            ),
            Text(
              text,
              style: TextStyle(color: COLOR_WHITE),
            )
          ],
        ),
      ),
    );
  }
}
