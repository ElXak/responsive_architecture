import 'package:flutter/material.dart';

import '../../data_models/drawer_item_data.dart';
import '../base_model_widget.dart';

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(data.iconData),
    );
  }
}
