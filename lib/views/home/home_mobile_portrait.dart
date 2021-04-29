import 'package:flutter/material.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/app_drawer/app_drawer.dart';
import '../../widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: IconButton(
                icon: Icon(Icons.menu, size: 30),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                }),
          ),
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
