import 'package:flutter/material.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/app_drawer/app_drawer.dart';
import '../../widgets/base_model_widget.dart';

class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      body: Row(
        children: [
          AppDrawer(),
          Expanded(
              child: Center(
            child: Text(model.title),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => model.updateTitle(),
      ),
    );
  }
}
