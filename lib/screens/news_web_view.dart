import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  final String url;

  const NewsWebView({
    super.key,
    required this.url,
  });

  @override
  NewsWebViewState createState() => NewsWebViewState();
}

class NewsWebViewState extends State<NewsWebView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'WebView',
          style: GoogleFonts.ubuntuCondensed(fontSize: 27),
        ),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
