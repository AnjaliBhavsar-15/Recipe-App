import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final String title;
  final String ingredients;
  final String steps;
  final String imgUrl;
  final int duration;

  DetailScreen({this.title,this.imgUrl,this.ingredients,this.duration,this.steps});



  Widget _buildContainer(Widget child){

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black54,
        border: Border.all(
          color: Colors.grey
        )
      ),
      width: double.infinity,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context,isScrollable){
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                titleSpacing: 2.0,
                centerTitle: true,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(title,style: TextStyle(fontSize: 15,color: Colors.white),),
                  background: Image.network(imgUrl,fit: BoxFit.cover,),
                ),
              )
            ];
          },
          body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                child: Text('Ingredients',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              _buildContainer(
                Text(ingredients,style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Steps',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Expanded(child: _buildContainer(
                  Text(steps,style: TextStyle(fontSize: 20,
                      color: Colors.white),)
              ),),

            ],
          )
      ),
    );
  }
}

















