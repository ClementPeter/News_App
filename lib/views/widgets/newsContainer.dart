import 'package:flutter/material.dart';

//stateless widget
class NewsContainer extends StatelessWidget {
  final String title;
  final String description;
  final String urlToImage;
  final String url;

  const NewsContainer(
      {Key? key,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      //margin: const EdgeInsets.all(10),
      //padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: crossAxisAlignment.end,
        children: [
          Image.network(
            urlToImage,
            fit: BoxFit.cover,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/webview', arguments: url);
            },
            child: const Text('Read More'),
          ),
        ],
      ),
    );
  }
}
