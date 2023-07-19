import 'dart:math';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

import '../../constants/agora_keys.dart';
import '../../ui/app_styles.dart';

class AudienceScreen extends StatelessWidget {
  const AudienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AudiencePage();
  }
}

class AudiencePage extends StatefulWidget {
  const AudiencePage({Key? key}) : super(key: key);

  @override
  State<AudiencePage> createState() => _AudiencePageState();
}

class _AudiencePageState extends State<AudiencePage> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: AgoraKeys.appId,
      channelName: 'test-channel',
      tempToken:
          '007eJxTYOCoq7yyo0X5+QZTw6kX659+WXfaLMDNUKfm8wbhdXo8zF8UGEzSUozMTSxTkixMEk0MDA0SU1NNDVMMzcwskkzS0tKMfZW3pTQEMjLk/93CysgAgSA+D0NJanGJbnJGYl5eag4DAwB0WiL7',
      uid: Random().nextInt(1000) + 2,
    ),
    agoraChannelData: AgoraChannelData(
      channelProfileType: ChannelProfileType.channelProfileLiveBroadcasting,
      clientRoleType: ClientRoleType.clientRoleAudience,
    ),
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livestream',
            style: TextStyleExtension.screenTitleLabelStyles),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(
              client: client,
              layoutType: Layout.floating,
              enableHostControls: true, // Add this to enable host controls
            ),
            AgoraVideoButtons(client: client),
          ],
        ),
      ),
    );
  }
}
