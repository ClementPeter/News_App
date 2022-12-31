import 'package:flutter/material.dart';
import 'package:news_app/controller/fetchNews.dart';
import 'package:news_app/views/widgets/newsContainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'News App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: PageView.builder(
        controller: PageController(initialPage: 2),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              
              child: NewsContainer(
            title:
                'Apple is planning to launch the largest MacBook Air ever at its spring 2023 event',
            description:
                'We’ve been hearing rumors about a new, larger MacBook Air for a while now, but according to a new report from an accurate source, the laptop might make finally make its debut in the next few months. which means the new laptop could be revealed in the spring. Apple is reportedly planning several Mac announcements at its annual spring event, including refreshes to the MacBook Pro and Mac mini, and possibly a revival of the iMac Pro". ',
            urlToImage:
                'https://images.unsplash.com/photo-1530893609608-32a9af3aa95c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFjYm9vayUyMHByb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            
            
            url:
                'https://www.gizmochina.com/2022/12/18/oukitel-rt3-mini-rugged-tablet-price-specs-launch-date/',
          ));
        },
      ),
    );
  }
}
