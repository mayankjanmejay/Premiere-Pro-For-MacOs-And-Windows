import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:twptest/shared/models.dart';
import 'package:twptest/shared/others.dart';

class LoadFSData extends StatefulWidget {
  @override
    _LoadFSDataState createState() => _LoadFSDataState();
}

class _LoadFSDataState extends State<LoadFSData> {
  var _usersStream = FirebaseFirestore.instance.collection('banner')
  //.withConverter<QuestionAnswers>(fromFirestore:  (snap,_)=>QuestionAnswers.fromJson(snap.data()), toFirestore:  (snap,_)=>snap.toJson())
  .snapshots();




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
         
        }

        return ShowError(message: 'Unable to load data from firestore', title: 'Error');
        
      },
    );
  }
}