import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:twptest/shared/functions.dart';
import 'package:twptest/shared/models.dart';
import 'package:twptest/shared/others.dart';
import 'package:twptest/views/carousel.dart';

class LoadFSData extends StatefulWidget {
  @override
    _LoadFSDataState createState() => _LoadFSDataState();
}

class _LoadFSDataState extends State<LoadFSData> {
  var _usersStream = FirebaseFirestore.instance.collection('banner')
  //.withConverter<CHeaders>(fromFirestore:  (snap,_)=>CHeaders.fromJson(snap.data()), toFirestore:  (snap,_)=>snap.toJson())
  .snapshots();



var allLocations;
@override
  void initState() {
    localFetchCDetailList().then((value) {
      setState(() {
        allLocations=value;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot< QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasError) {
          return ShowError(message: 'Unable to load data from firestore', title: 'Error');
        }

        if (!snapshot.hasData||snapshot.connectionState == ConnectionState.waiting) {
          return LoadingAnimation();
        }

        if (snapshot.hasData)
        {
         

        // return  CarouselView(headers: snapshot.data.docs, data: allLocations);
        }

        return ShowError(message: 'Unable to load data from firestore', title: 'Error');
        
      },
    );
  }
}