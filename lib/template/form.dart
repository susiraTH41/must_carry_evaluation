import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class GoogleForm extends StatefulWidget {
  String url;
  GoogleForm(this.url);
  @override
  _GoogleFormState createState() => _GoogleFormState(this.url);
}

class _GoogleFormState extends State<GoogleForm> {
  InAppWebViewController controller;
  String url;
  double progress = 0;
  _GoogleFormState(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/NBTC.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              Image.asset(
                'assets/KTP.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              Image.asset(
                'assets/ku_color_big.png',
                fit: BoxFit.contain,
                height: 50,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: progress < 1.0
                  ? LinearProgressIndicator(value: progress)
                  : Container(),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white)),
              child: InAppWebView(
                initialUrl: url,
                initialHeaders: {},
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(debuggingEnabled: true)),
                onWebViewCreated: (webViewController) =>
                    controller = webViewController,
                onLoadStart: (controller, url) {
                  setState(() {
                    this.url = url;
                  });
                },
                onLoadStop: (controller, url) {
                  setState(() {
                    this.url = url;
                  });
                },
                onProgressChanged: (controller, progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
              ),
            ))
          ],
        )),
      ),
    );
  }
}
