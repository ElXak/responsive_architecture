import 'package:flutter/material.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/app_drawer/app_drawer.dart';
import '../../widgets/base_model_widget.dart';

class HomeTablet extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    List<Widget> children = [
      Expanded(
          child: Center(
        child: Text(model.title),
      )),
      AppDrawer(),
    ];
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(children: children)
          : Row(children: children.reversed.toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => model.updateTitle(),
      ),
    );
  }
}
