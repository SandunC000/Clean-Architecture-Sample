import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        // height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white
          // border: Border.all(color: Colors.grey)
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FORD',style: TextStyle(color: Colors.grey,fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('John Andrew Ford', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                  Icon(Icons.call, color: Colors.blue,size: 30,)
                ],
              ),
              Text('2 Great North Road, Grey Lynn', style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.label_important_outline_sharp, color: Colors.green,),
                        Text('Favorited'),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.directions, color: Colors.grey,),
                        Text('Directions'),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.grey,),
                        Text('Favorited'),
                      ],
                    ),
                  ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
