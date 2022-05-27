import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class RssFeedCard extends StatelessWidget {
  // Widget (View) for Card Item
  final String title;
  final String subtitle;
  final String imageURL;
  final int idx;

  const RssFeedCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageURL,
      required this.idx})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          print("Clicked RSS №$idx");
        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 8),
              Image.network(
                imageURL,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('images/rss.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.contain);
                },
              ),
              ListTile(
                leading: Icon(Icons.rss_feed_outlined),
                title: Text(title),
                subtitle: Text(subtitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
