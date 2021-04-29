import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data_models/drawer_item_data.dart';
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
    return Provider.value(
      value: DrawerItemData(iconData: iconData, title: title),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          landscape: (context) => DrawerOptionMobileLandscape(),
          portrait: (context) => DrawerOptionMobilePortrait(),
        ),
        tablet: OrientationLayout(
          landscape: (context) => DrawerOptionMobilePortrait(),
          portrait: (context) => DrawerOptionTabletPortrait(),
        ),
      ),
    );
  }
}
