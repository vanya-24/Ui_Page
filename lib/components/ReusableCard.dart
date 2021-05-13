import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {

  ReusableCard(@required this.heading , @required this.descript, @required this.bg, @required this.color);
  final String heading;
  final String descript;
  final Color color;
  final Color bg;
  @override
  Widget build(BuildContext context) {
    return InkWell(
     child: FittedBox(

       child: Container(
         child: Card(
           color: Colors.white,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10.0),
           ),
           elevation: 5,
           child:Row(
             children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.symmetric( horizontal: 5.0),
                      child: Text(heading,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        descript,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 8.5,
                           backgroundColor: bg,
                           color: color,
                        ),
                      ),
                  ],
                ),
              ),
             ],
           )
         ),
       ),
     ),
    );
  }
}

// Container(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: <Widget>[
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 5.0),
// child: Text(heading,
// style: kHeadingStyle,
// ),
// ),
// SizedBox(
// height: 5.0,
// ),
// Text(
// descript,
// style: kDescriptionStyle,
// ),
// ],
// ),