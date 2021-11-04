import 'package:flutter/material.dart';
import 'package:real_estate/presentation/widgets/border_icon_widget.dart';
import 'package:real_estate/presentation/widgets/choice_option_widget.dart';
import 'package:real_estate/presentation/widgets/option_button_widget.dart';
import 'package:real_estate/presentation/widgets/real_e_state_item_widget.dart';
import 'package:real_estate/sample_data.dart';
import 'package:real_estate/utils/constants.dart';
import 'package:real_estate/utils/widgets_functions.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BorderIconWidget(
                          child: Icon(Icons.menu),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          width: 50,
                          height: 50,
                        ),
                        BorderIconWidget(
                          child: Icon(Icons.settings),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(20),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "San Francisco",
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Divider(
                      height: 2,
                      color: COLOR_GREY,
                    ),
                  ),
                  addVerticalSpace(10),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ["<\$220,000", "For Sale", "3-4 Beds", ">1000 sqft"]
                          .map(
                            (filter) => ChoiceOption(text: filter),
                          )
                          .toList(),
                    ),
                  ),
                  addVerticalSpace(10),
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: RE_DATA.length,
                      itemBuilder: (context, index) {
                        return RealEstateItem(
                          itemData: RE_DATA[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButtonWidget(
                    text: "Map View",
                    icon: Icons.map_rounded,
                    width: size.width * 0.35,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
