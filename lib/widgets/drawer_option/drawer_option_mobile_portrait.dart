import 'package:flutter/material.dart';

import '../../data_models/drawer_item_data.dart';
import '../base_model_widget.dart';

class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: [
          Icon(data.iconData, size: 25),
          SizedBox(width: 25),
          Text(
            data.title,
            style: TextStyle(fontSize: 21),
          )
        ],
      ),
    );
  }
}
