import 'dart:io' show Platform;

import 'package:cyberchatbot/common/dart_extensions/build_context_extension.dart';
import 'package:cyberchatbot/common/dart_extensions/connection_state_extension.dart';
import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import 'package:xmpp_plugin/error_response_event.dart';
import 'package:xmpp_plugin/models/chat_state_model.dart';
import 'package:xmpp_plugin/models/connection_event.dart';
import 'package:xmpp_plugin/models/message_model.dart';
import 'package:xmpp_plugin/models/present_mode.dart';
import 'package:xmpp_plugin/success_response_event.dart';
import 'package:xmpp_plugin/xmpp_plugin.dart';

import '../../native_log_helper.dart';
import '../conversation/conversation_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    implements DataChangeEvents {
  static late XmppConnection flutterXmpp;

  @override
  void initState() {
    XmppConnection.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    XmppConnection.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: connect(),
      builder: (context, snapshot) {
        if (snapshot.connectionState.isDone) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(
                context, ConversationScreen.routeName);
          });
        }
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.dW,
                  width: 50.dW,
                  margin: EdgeInsets.only(bottom: 16.dH),
                  child: CircularProgressIndicator(
                    strokeWidth: 3.dH,
                  ),
                ),
                Text(
                  "Connecting to server. Please wait...",
                  style: context.headline6,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> connect() async {
    await checkStoragePermission();
    const host = "jabber.eu.org";
    const username = "spuellocoronado@jabber.eu.org";
    const password = "Pass#123";
    const port ="5222";

    final auth = {
      "user_jid": "$username/${Platform.isAndroid ? "Android" : "iOS"}",
      "password": password,
      "host": host,
      "port": port,
      "nativeLogFilePath": NativeLogHelper.logFilePath,
      "requireSSLConnection": false,
      "autoDeliveryReceipt": false,
      "useStreamManagement": false,
      "automaticReconnection": true,
    };

    flutterXmpp = XmppConnection(auth);
    await flutterXmpp.start(_onError);
    await flutterXmpp.login();
  }

  void _onError(Object error) {
    print("Error: ${error.toString()}");
  }

  @override
  void onChatMessage(MessageChat messageChat) {
    print('onChatMessage: ${messageChat.toEventData()}');
    // TODO: implement onChatMessage
  }

  @override
  void onChatStateChange(ChatState chatState) {
    // TODO: implement onChatStateChange
  }

  @override
  void onConnectionEvents(ConnectionEvent connectionEvent) {
    // TODO: implement onConnectionEvents
  }

  @override
  void onGroupMessage(MessageChat messageChat) {
    // TODO: implement onGroupMessage
  }

  @override
  void onNormalMessage(MessageChat messageChat) {
    // TODO: implement onNormalMessage
  }

  @override
  void onPresenceChange(PresentModel message) {
    // TODO: implement onPresenceChange
  }

  @override
  void onSuccessEvent(SuccessResponseEvent successResponseEvent) {
    // TODO: implement onSuccessEvent
  }

  @override
  void onXmppError(ErrorResponseEvent errorResponseEvent) {
    // TODO: implement onXmppError
  }


}

Future<void> checkStoragePermission() async {
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    final PermissionStatus _permissionStatus =
    await Permission.storage.request();
    if (_permissionStatus.isGranted) {
      String filePath = await NativeLogHelper().getDefaultLogFilePath();
      print('logFilePath: $filePath');
    } else {
      print('logFilePath: please allow permission');
    }
  } else {
    String filePath = await NativeLogHelper().getDefaultLogFilePath();
    print('logFilePath: $filePath');
  }
}
