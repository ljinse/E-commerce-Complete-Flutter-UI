import 'package:flutter/material.dart';
import 'package:shop_app/screens/components/body.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Add in start screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
