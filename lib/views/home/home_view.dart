import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/home_view_model.dart';
import '../../widgets/base_widget.dart';
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
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (context) => ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: (context) => HomeMobilePortrait(),
          landscape: (context) => HomeMobileLandscape(),
        ),
        tablet: HomeTablet(),
      ),
    );
  }
}
