// import 'package:flutter/material.dart';
// import 'package:news_app/networking/fetchNews.dart';
// import 'package:news_app/models/newModels.dart';
// import 'package:news_app/views/newsContainer.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   //
//   bool isLoading = true; //toggle loading spinner
//   NewsArticle? newsArticle;
//   final PageController controller = PageController(initialPage: 0);

//   getNews() async {
//     newsArticle = await FetchNewsServices.fetchNews();
//     setState(() {
//       isLoading = false;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     getNews();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //FetchNewsServices.fetchNews();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: PageView.builder(
//         controller: controller,
//         scrollDirection: Axis.vertical,
//         //itemCount: newsArticle.length,
//         onPageChanged: (value) {
//           setState(() {
//             isLoading = true;
//           });
//           getNews();
//         },
//         itemBuilder: (context, index) {
//           // FetchNewsServices.fetchNews();
//           // return Center(
//           //   child: Text("$index"),
//           // );
//           return isLoading
//               ? const Center(child: CircularProgressIndicator())
//               : NewsContainer(
//                   urlToImage: newsArticle!.imgUrl,
//                   title: newsArticle!.newsTitle == null
//                       ? "No Title"
//                       : newsArticle!.newsTitle!,
//                   description: newsArticle!.newsDes == null
//                       ? "No Description"
//                       : newsArticle!.newsDes!,

//                   content: newsArticle!.newsCnt == null
//                       ? "No Content"
//                       : newsArticle!.newsCnt!,

//                   //https://images.unsplash.com/photo-1530893609608-32a9af3aa95c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFjYm9vayUyMHByb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
//                   //urlToImage: 'https://picsum.photos/250?image=9',
//                   // url: 'https://picsum.photos/250?image=9',
//                   url: newsArticle!.newsUrl!,
//                   //'https://www.gizmochina.com/2022/12/18/oukitel-rt3-mini-rugged-tablet-price-specs-launch-date/',
//                 );
//         },
//       ),
//       // body: PageView.builder(
//       //     itemCount: 10,
//       //     itemBuilder: (context, index) {
//       //       return Container(
//       //         child: Center(
//       //           child: Text("$index"),
//       //         ),
//       //         color: index % 2 == 0 ? Colors.green : Colors.blue[700],
//       //       );
//       //     }),
//       // floatingActionButton: FloatingActionButton.extended(
//       //   onPressed: () {},
//       //   label: const Text("Read more"),
//       // ),
//     );
//   }
// }
