import 'package:flutter/material.dart';
import 'package:real_estate/utils/constants.dart';

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: COLOR_GREY.withAlpha(25),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: EdgeInsets.only(left: 15),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}