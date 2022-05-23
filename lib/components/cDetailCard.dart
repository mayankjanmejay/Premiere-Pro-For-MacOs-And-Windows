import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twptest/components/listToCarousel.dart';
import 'package:twptest/shared/functions.dart';
import 'package:twptest/shared/models.dart';

class LocationCard extends StatefulWidget {

  final CData data;
  LocationCard({Key? key, required this.data}) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {


    var theme=Theme.of(context);
    var data=widget.data;
    return Container(
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          elevation: 3,
          color: Colors.blueAccent.shade100,
          
          child: Card(
            //height: 50,
            elevation: 10,
            color: Colors.blueGrey.shade50,         
             child: 
             Row(children: [
               Container( width: 100,  child: Center(
                   child: ListToCarousel(photosList:data.images==null? []: data.images!.map((e) => e).toList())
                 ),),
               Expanded(  
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                     child: AutoSizeText(
                       
                       data.name??'', textScaleFactor: 1.2,style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w800),
                       maxLines: 1,),
                   ),

                   Padding(
                     padding: const EdgeInsets.all(1),
                     child: Row(children: [

                     

                       Row(children: [
                         Container(width: width(context)/3.5, child: Row(children: [
                           Container( width: 30, child: Icon(Icons.pin_drop_outlined, color: Colors.grey.shade700,),),
                           Expanded(child: Text('${data.locationName}', textScaleFactor: 0.7,style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w800)),),
                         ],),                      
                         ),                      
                       ],),

                       

                     ],),
                   )
                 ],

               ), ),
              //  Expanded(child:  Container())
               
             ],)
             
            


          ),
        ),
      ),
    );
  }
}