import 'package:flutter/material.dart';

import '../utils/ui_utils.dart';
import 'sizing_information.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      SizingInformation sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxConstraints.maxWidth, boxConstraints.maxHeight));

      return builder(context, sizingInformation);
    });
  }
}
