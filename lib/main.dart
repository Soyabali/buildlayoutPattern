import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      // home
      home: Scaffold(
        // appBar
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // body
        body: Column(
          children: <Widget>[
            Image.asset('assets/natu.png',
            width: 600,
            height: 240,
            ),
            titleSection,
            buttonSection,
            textSection

          ],
        )
      ),
    );
  }
} // close the app
// implement the title row
Widget titleSection=  Container(
    child:Padding(
    padding: const EdgeInsets.all(32.0),
    child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                        child: const Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Oeschinen Lake Campground', style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    const  Text('Kandersteg, Switzerland', style: TextStyle(
                      fontWeight: FontWeight.bold
                      ),
                      ),
            ],
          ),
        ),
        Icon(Icons.star,color: Colors.red[500]),
        Text('41')

      ],
    ),
  )
);
// Implementatin on Button Row

Column _buildButtonColumn(Color color,IconData icon,String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon,color:color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(label,style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color
        ),),
      )
    ],
  );

}
// button Section
Color color = Colors.blueAccent;
Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    _buildButtonColumn(color,Icons.call,'Call'),
    _buildButtonColumn(color,Icons.near_me,'Route'),
    _buildButtonColumn(color,Icons.share,'SHARE'),
  ],
);
// Implement the text section
Widget textSection = Container(
  padding: const EdgeInsets.all(32),

  child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.' ,softWrap: true),
);




