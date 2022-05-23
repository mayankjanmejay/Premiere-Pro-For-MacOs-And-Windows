
import 'dart:convert';

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:twptest/shared/data.dart';
import 'package:twptest/shared/models.dart';
import 'dart:async';


var httpHeader={
       "Content-Type":"application/json",
      };
navTo(Widget widget, BuildContext context)
{
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

navToReplace(Widget widget, BuildContext context)
{
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

double height(BuildContext context)
{
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context)
{
  return MediaQuery.of(context).size.width;
}

Future<List<CHeaders>> localFetchHeaders() async {

  return compute(parseItems, cData);
}

Future<List<CHeaders>> parseItems(String responseBody) async {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();


  return parsed.map<CHeaders>((json) => CHeaders.fromJson(json)).toList();
}

Future<List<CData>> localFetchCDetailList() async {

  return compute(parseCDetail, cDetailData);
}

Future<List<CData>> parseCDetail(String responseBody) async {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();


  return parsed.map<CData>((json) => CData.fromJson(json)).toList();
}


Future<List<CData>> fetchCDetailFilteredList(String type) async {
  final response = await 
      get(Uri.parse('https://www.privilee.ae/api/v1/venues/?type=$type'), headers:httpHeader );
  return compute(parseCDetail, cDetailData);
}