import 'package:agora_demo/config/routes.dart';
import 'package:agora_demo/constants/app_dimen.dart';
import 'package:flutter/material.dart';

import '../../ui/app_styles.dart';
import '../../ui/ui_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agora Livestream Demo',
            style: TextStyleExtension.screenTitleLabelStyles),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimen.spacingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildVoipButton(),
              const SizedBox(
                height: AppDimen.spacingLarge,
              ),
              _buildAudienceButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVoipButton() {
    return PrimaryButton(context, label: "Start Live", onPressed: () {
      Navigator.of(context).pushNamed(Routes.voip);
    });
  }

  Widget _buildAudienceButton() {
    return PrimaryButton(context, label: "Join Live", onPressed: () {
      Navigator.of(context).pushNamed(Routes.audience);
    });
  }
}
