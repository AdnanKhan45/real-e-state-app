import 'package:flutter/material.dart';
import 'package:real_estate/presentation/pages/detail_page.dart';
import 'package:real_estate/utils/constants.dart';
import 'package:real_estate/utils/custom_functions.dart';
import 'package:real_estate/utils/widgets_functions.dart';

import 'border_icon_widget.dart';

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(
              itemData: itemData,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    itemData["image"],
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: BorderIconWidget(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.favorite_border,
                      color: COLOR_GREY,
                    ),
                  ),
                ),
              ],
            ),
            addVerticalSpace(15),
            Row(
              children: [
                Text(
                  "${formatCurrency(itemData['amount'])}",
                  style: themeData.textTheme.headline1,
                ),
                addHorizontalSpace(10),
                Text(
                  "${itemData['address']}",
                  style: themeData.textTheme.bodyText2,
                ),
              ],
            ),
            addVerticalSpace(10),
            Text(
              "${itemData['bedrooms']} bedrooms / ${itemData['bathrooms']} bathrooms / ${itemData['area']} sqft",
              style: themeData.textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
