import 'package:flutter/material.dart';

import '../../widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: IconButton(
                icon: Icon(Icons.menu, size: 30),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                }),
          ),
        ],
      ),
    );
  }
}
