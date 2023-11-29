import 'package:webview_flutter/webview_flutter.dart';

WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(
      Uri.parse('https://id.pinterest.com/search/pins/?q=fashion&rs=typed'));
