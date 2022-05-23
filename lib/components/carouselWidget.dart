import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:twptest/shared/models.dart';
import 'package:twptest/shared/others.dart';

class Carousel extends StatefulWidget {

  final List<CHeaders> data;
  final Function onPageChanged;
  Carousel({Key? key, required this.data, required this.onPageChanged}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
   int pageIndex=0;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: PageView(
            children: widget.data.map((e) => Container(height: 300, child: CachedNetworkImage(
        imageUrl: e.image??'https://www.mayank-j.com/gs/images/noImage.jpg',
        fit: BoxFit.cover, 
        placeholder: (context, url) => LoadingAnimation(),
        errorWidget: (context, url, error) => ShowError(message: 'Image not found', title: '404'),
     ))).toList(),
            
            onPageChanged: (index){
                setState(() {
                  pageIndex=index;
                  widget.onPageChanged(index);
                });
            },
          ),
        ),
        // SizedBox(height: 40,),
        CarouselIndicator(
          count: widget.data.length,
          index: pageIndex,
          color:Theme.of(context).colorScheme.primary,
          activeColor: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
        ),
      ],
    );
  }
}