import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import 'drawer_option_mobile_landscape.dart';
import 'drawer_option_mobile_portrait.dart';
import 'drawer_option_tablet_portrait.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOption({Key key, this.title, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(iconData: iconData),
        portrait: DrawerOptionMobilePortrait(title: title, iconData: iconData),
      ),
      tablet: OrientationLayout(
        landscape: DrawerOptionMobilePortrait(title: title, iconData: iconData),
        portrait: DrawerOptionTabletPortrait(title: title, iconData: iconData),
      ),
    );
  }
}
