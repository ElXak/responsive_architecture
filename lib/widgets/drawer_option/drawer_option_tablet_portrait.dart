import 'package:flutter/material.dart';

import '../../data_models/drawer_item_data.dart';
import '../base_model_widget.dart';

class DrawerOptionTabletPortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            data.iconData,
            size: 45,
          ),
          Text(
            data.title,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
