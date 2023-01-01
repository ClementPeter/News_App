import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({this.newsUrl, super.key});

  String? newsUrl;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      widget.newsUrl = widget.newsUrl!.contains("http:")
          ? widget.newsUrl!.replaceAll("http:", "https:")
          : widget.newsUrl!;
    });
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("name of app"),
        centerTitle: true,
      ),
      //Setup WebView
      body: WebView(
        initialUrl: widget.newsUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          setState(() {
            _controller.complete(webViewController);
            });
          
        },  
      ),
    );
  }
}
