import 'package:agora_demo/modules/home/home_screen.dart';
import 'package:agora_demo/modules/voip/audience_screen.dart';
import 'package:flutter/material.dart';

import '../modules/voip/voip_screen.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';
  static const voip = '/voip';
  static const audience = '/audience';
}

Map<String, WidgetBuilder> appRoutes = {
  Routes.home: (context) => const HomeScreen(),
  Routes.voip: (context) => const VoipScreen(),
  Routes.audience: (context) => const AudienceScreen()
};
