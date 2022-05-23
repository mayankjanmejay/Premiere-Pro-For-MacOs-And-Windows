import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

class ListToCarousel extends StatefulWidget {
  final List<String> photosList;

  ListToCarousel({Key? key, required this.photosList}) : super(key: key);

  @override
  State<ListToCarousel> createState() => _ListToCarouselState();
}

class _ListToCarouselState extends State<ListToCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselImages(
  scaleFactor: 0.5,
  listImages: widget.photosList,
  height: 100.0,
  borderRadius: 5.0,
  cachedNetworkImage: true,
  verticalAlignment: Alignment.topCenter,
  onTap: (index){
      print('Tapped on page $index');
  },
),
    );
  }
}