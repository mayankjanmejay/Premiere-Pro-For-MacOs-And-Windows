import 'package:flutter/material.dart';
import 'package:twptest/components/carouselWidget.dart';
import 'package:twptest/shared/functions.dart';
import 'package:twptest/shared/models.dart';
import 'package:twptest/shared/others.dart';
import 'package:twptest/views/cDetailList.dart';

class CarouselView extends StatefulWidget {
  final List<CHeaders> headers;
  final List<CData> data;
  CarouselView({Key? key, required this.headers, required this.data}) : super(key: key);

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {

  String type='hotel';


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (Navigator.of(context).canPop())
        {
          Navigator.of(context).pop();
        }
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          toolbarHeight: 50,
          title: Text(type.replaceAll('_', ' ').toUpperCase()),
          leading: IconButton(onPressed:  () {
           if (Navigator.of(context).canPop())
        {
          Navigator.of(context).pop();
        }
          }, icon: Icon(Icons.arrow_back, color: Colors.blueGrey.shade700,)),
        ),
    
        body: Column(children: [
          Container(
            height: 320,
            width: width(context),
            child: Carousel(data: widget.headers, onPageChanged: (index) {

              setState(() {                  
              type=widget.headers.elementAt(index).type??'hotel';
              });


            }),

            
          ),

          Expanded(child:CDetailList(type: type, data: widget.data))

        ],),
      ),
    );
  }
}