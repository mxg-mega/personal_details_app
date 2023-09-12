import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: BackButton(
          onPressed: () {
            // When the back button is pressed on the app bar it takes you back to parent Route
            Navigator.pop(context);
          },
        ),
      ),
      body: const WebView(
        // This widget is responsible for opening the wevbiew in the app it requires a Stateful Widget
        initialUrl: 'https://github.com/mxg-mega',
      ),
    );
  }
}
