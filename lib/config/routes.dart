import 'package:agora_demo/modules/auth/board_screen.dart';
import 'package:agora_demo/modules/auth/login_screen.dart';
import 'package:agora_demo/modules/home/home_screen.dart';
import 'package:agora_demo/modules/voip/audience_screen.dart';
import 'package:flutter/material.dart';

import '../modules/voip/voip_screen.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';
  static const voip = '/voip';
  static const audience = '/audience';
  static const board = '/board';
  static const login = '/login';
}

Map<String, WidgetBuilder> appRoutes = {
  Routes.home: (context) => const HomeScreen(),
  Routes.voip: (context) => const VoipScreen(),
  Routes.audience: (context) => const AudienceScreen(),
  Routes.board: (context) => const BoardScreen(),
  Routes.login: (context) => const LoginScreen()
};
