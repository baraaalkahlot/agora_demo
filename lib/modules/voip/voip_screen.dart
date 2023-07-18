import 'package:agora_demo/ui/app_styles.dart';
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

import '../../constants/agora_keys.dart';

class VoipScreen extends StatelessWidget {
  const VoipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VoipPage(channel: 'test-channel');
  }
}

class VoipPage extends StatefulWidget {
  final String _channel;

  const VoipPage({Key? key, required String channel})
      : _channel = channel,
        super(key: key);

  @override
  State<VoipPage> createState() => _VoipPageState();
}

class _VoipPageState extends State<VoipPage> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: AgoraKeys.appId,
      channelName: 'test-channel',
      tempToken: '007eJxTYMhZ+XlDyYQ7BfYXCu+V7/BQfDWb7f2bwPO1an6HHKIFZtUqMJikpRiZm1imJFmYJJoYGBokpqaaGqYYmplZJJmkpaUZ6yhvS2kIZGRoOb6HiZEBAkF8HoaS1OIS3eSMxLy81BwGBgDvxiQX',
      uid: 1,
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
        title:  Text('Livestream', style: TextStyleExtension.screenTitleLabelStyles),
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
            AgoraVideoButtons(
              client: client,
            ),
          ],
        ),
      ),
    );
  }
}
