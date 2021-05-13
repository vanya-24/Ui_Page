import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './components/ReusableCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manage Your Worries',
      home:Scaffold(
        appBar:AppBar(
          title:Text('Manage Your Worries'),
        ),
        body:Center(
          child: CarouselSlider(
            options: CarouselOptions(
                height: 600.0,
              enlargeCenterPage: true,
              viewportFraction: 0.85,
            ),
            items: strings.map((i){
              return Builder(builder: (BuildContext context)
              {
                return Container(
                 // text:Text(i),
                 //  width: MediaQuery.of(context).size.width,
                 // height: 100,
                  child: ListView(
                    scrollDirection : Axis.vertical,
                    children:<Widget>[
                     ReusableCard('Re-think mobile dashboard structure','UX design',Colors.amber,Colors.yellowAccent),
                     ReusableCard('Re-think mobile dashboard structure','UX design',Colors.green,Colors.lightGreenAccent),
                     ReusableCard('Re-think mobile dashboard structure','UX design',Colors.redAccent,Colors.red),
                     ReusableCard('Re-think mobile dashboard structure','UX design',Colors.amber,Colors.yellowAccent),
                    ],
                  ),

                  // margin: EdgeInsets.symmetric(
                  //     horizontal:25,
                  // ),
                  // decoration: BoxDecoration(
                  //   color: i,
                  //   borderRadius: BorderRadius.circular(25),
                );
              });
            }).toList(),
          ),
        ),
      ),
    );
  }

  final List strings = [
    'Worries',
    'Progress',
    'Finished',
    'To Do'
  ];
}



// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
