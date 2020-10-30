import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LegalScreen extends StatelessWidget {
  static var routeName = "/legal";

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> rcvdData =
        ModalRoute.of(context).settings.arguments;

    print(rcvdData['loadurl']);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/");
          },
        ),
      ),
      body: WebView(
        initialUrl: rcvdData['loadurl'],
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
