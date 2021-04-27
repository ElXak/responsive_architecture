import 'package:flutter/material.dart';

import '../base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) => Scaffold(
        body: Center(
          child: Text(sizingInformation.toString()),
        ),
      ),
    );
  }
}
