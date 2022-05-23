import 'package:flutter/material.dart';
import 'package:twptest/components/cDetailCard.dart';
import 'package:twptest/shared/models.dart';
import 'package:twptest/shared/others.dart';

class CDetailList extends StatefulWidget {
  final String type;
  final List<CData> data;
  CDetailList({Key? key, required this.type, required this.data}) : super(key: key);

  @override
  State<CDetailList> createState() => _CDetailListState();
}

class _CDetailListState extends State<CDetailList> {
  @override
  Widget build(BuildContext context) {

    var filteredList=widget.data.where((element) => element.type==widget.type).toList();

    return Scaffold(
      body:filteredList.length==0? ShowError(
            title: '404',
            message: 'No locations found',
          ) :  ListView.separated(
        itemCount: filteredList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider( height: 0.5, color: Theme.of(context).colorScheme.primary,) ;
        },
        itemBuilder: (BuildContext context, int index) {
          return  LocationCard(data: filteredList.elementAt(index),);
        },
      ),
    );
  }
}