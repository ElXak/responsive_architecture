import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import 'home_mobile_landscape.dart';
import 'home_mobile_portrait.dart';
import 'home_tablet.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
/*
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.all(50),
                color: Colors.blue,
                child: ResponsiveBuilder(
                  builder: (context, sizingInfo) => Text(sizingInfo.toString()),
                ),
              ),
              Text(sizingInformation.toString()),
            ],
          ),
        ),
      ),
    );
*/
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeTablet(),
    );
  }
}
