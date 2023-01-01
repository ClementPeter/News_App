import 'package:flutter/material.dart';
import 'package:news_app/views/details_screen.dart';

//stateless widget
class NewsContainer extends StatelessWidget {
  final String? title;
  final String? description;
  final String? content;
  final String? urlToImage;
  final String? url;

  const NewsContainer({
    Key? key,
    this.title,
    this.description,
    this.urlToImage,
    this.url,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Url Image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
            ),
            child: Image.network(
              urlToImage!,
              fit: BoxFit.cover,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            title!.length > 70 ? title!.substring(0, 70) : title!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description!,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 10),
          // Text(
          //   content!,
          //   style: const TextStyle(fontSize: 15),
          // ),
          const SizedBox(height: 10),
          Text(
            //description,
            content != "--"
                ? content!.length > 250
                    ? content!.substring(0, 100)
                    : "${content.toString().substring(0, content!.length - 20)}..."
                : content!,
            style: const TextStyle(fontSize: 20),
          ),
          Expanded(child: SizedBox()),
       
          Align(
            alignment: Alignment.bottomRight,
            child: RawMaterialButton(
              fillColor: Colors.blue,
              elevation: 5,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      newsUrl: url!,
                    ),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Read more",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
