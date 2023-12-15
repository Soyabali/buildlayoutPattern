import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: CollapsingList(),
      ),
    );
  }
}
//  ----

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent)
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
class CollapsingList extends StatelessWidget {
  // list data
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(

        // decorate
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/natu.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: InkWell(
                     onTap: (){
                       print('------74--$headerText');
                     },
                    child: Text(headerText)))),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Header Section 1'),
        SliverGrid.count(
          crossAxisCount: 3,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                         Icon(Icons.add,color: Colors.green),
                         SizedBox(
                           height: 10,
                         ),
                         Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add',style: TextStyle(color: Colors.blue,fontSize: 18),)

                ],
              ),
            ),

          ],
        ),
        makeHeader('Header Section 2'),
        SliverFixedExtentList(
          itemExtent: 80.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                child: ListTile(
                       leading: Icon(Icons.add,size: 50,color: Colors.yellow),
                      title: Text('Item 1'),
                     trailing: Icon(Icons.arrow_forward_ios,size: 50,color: Colors.blue),
                      subtitle: Text('Sub Name'),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add,size: 50,color: Colors.yellow),
                  title: Text('Item 1'),
                  trailing: Icon(Icons.arrow_forward_ios,size: 50,color: Colors.blue),
                  subtitle: Text('Sub Name'),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add,size: 50,color: Colors.yellow),
                  title: Text('Item 1'),
                  trailing: Icon(Icons.arrow_forward_ios,size: 50,color: Colors.blue),
                  subtitle: Text('Sub Name'),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add,size: 50,color: Colors.yellow),
                  title: Text('Item 1'),
                  trailing: Icon(Icons.arrow_forward_ios,size: 50,color: Colors.blue),
                  subtitle: Text('Sub Name'),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add,size: 50,color: Colors.yellow),
                  title: Text('Item 1'),
                  trailing: Icon(Icons.arrow_forward_ios,size: 50,color: Colors.blue),
                  subtitle: Text('Sub Name'),
                ),
              ),

            ],
          ),
        ),
        makeHeader('Header Section 3'),
        SliverGrid(
          gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: new Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        makeHeader('Header Section 4'),
        // Yes, this could also be a SliverFixedExtentList. Writing
        // this way just for an example of SliverList construction.
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.pink, height: 150.0),
              Container(color: Colors.cyan, height: 150.0),
              Container(color: Colors.indigo, height: 150.0),
              Container(color: Colors.blue, height: 150.0),
            ],
          ),
        ),
      ],
    );
  }
}