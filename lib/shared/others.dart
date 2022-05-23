
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingAnimation extends StatefulWidget {
  LoadingAnimation({Key? key}) : super(key: key);

  @override
  _LoadingAnimationState createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Center( child:  Container(
      width: 50,
      height: 50,

       child: SpinKitPulse(

          color: Colors.red,
  size: 50.0,
       ),
    ));
  }
}


class ShowError extends StatefulWidget {

  String title;
  String message;
  ShowError({Key? key, required this.message, required this.title}) : super(key: key);

  @override
  _ShowErrorState createState() => _ShowErrorState();
}

class _ShowErrorState extends State<ShowError> {
  @override
  Widget build(BuildContext context) {
var style=TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                              letterSpacing: 0.2
                          );
    return Center( child:  Container(
 

       child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          child: Icon(
                        Icons.error,
                        size: 50,
                        color: Colors.red,
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Whoops",
                          style:style,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.title,
                              style: style,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                               "${widget.message}",
                                style:  style,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                    ],
                  ),
                )

    ));
  }
}








