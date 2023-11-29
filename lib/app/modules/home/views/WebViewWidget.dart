import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/controllers/WebViewController.dart';
import 'package:webview_flutter/webview_flutter.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
      // appBar: AppBar(title: const Text('Flutter Simple Example')),
      body: WebViewWidget(controller: controller));
}
