// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class DetailsScreen extends StatefulWidget {
//   DetailsScreen({this.newsUrl, super.key});

//   String? newsUrl;

//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }

// class _DetailsScreenState extends State<DetailsScreen> {
//   //WebViewController? controller;
//   //String link = widget.newsUrl!; //default link of webview


//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       widget.newsUrl = widget.newsUrl!.contains("http:")
//           ? widget.newsUrl!.replaceAll("http:", "https:")
//           : widget.newsUrl!;
//     });
//   }

//   // final Completer<WebViewController> _controller =
//   //     Completer<WebViewController>();


//    final controller = WebViewController()
//   ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   ..setBackgroundColor(const Color(0x00000000))
//   ..setNavigationDelegate(
//     NavigationDelegate(
//       onProgress: (int progress) {
//         // Update loading bar.
//       },
//       onPageStarted: (String url) {},
//       onPageFinished: (String url) {},
//       onWebResourceError: (WebResourceError error) {},
//       onNavigationRequest: (NavigationRequest request) {
//         if (request.url.startsWith('https://www.google.com/')) {
//           return NavigationDecision.prevent;
//         }
//         return NavigationDecision.navigate;
//       },
//     ),
//   )
//   ..loadRequest(Uri.parse('${widget.newsUrl}'));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("name of app"),
//         centerTitle: true,
//       ),
//       //Setup WebView
//       body: WebViewWidget(
//         controller: controller,
//         // initialUrl: widget.newsUrl,
//         // javascriptMode: JavascriptMode.unrestricted,
//         // onWebViewCreated: (_controller) {
//         //   setState(() {
//         //     //_controller.complete(webViewController);

//         //   });
//         // },
//       ),
//     );
//   }
// }
