import 'package:flutter/material.dart';
import '../models/cake.dart';


class CakeCard extends StatelessWidget{
  final Cake cake;
  const CakeCard({super.key, required this.cake});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(

        children: [
          SizedBox(
          // height: 110.0,
          // width: 110.0,
          
          child: Stack(
            children: [
      
              Positioned(
                child: Container(
                  transform: Matrix4.rotationZ(-0.05),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                        BoxShadow(
                          offset: Offset(0,5),
                          blurRadius: 10,
                          color: Color.fromARGB(255, 139, 138, 138).withOpacity(.84),
                        ),
                      ],
                  ),
                  
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 100.0,
                      width: 100.0,
      
                      child: Image.network(cake.url, fit: BoxFit.cover,)),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                child: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Image.asset('assets/images/ribbon.png'),
                  ),
                ),
        
            ]
          )
        ),
        SizedBox(
          width: 20
        ),
          Expanded(child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
            Text(cake.cakeName, 
            style: TextStyle(
              color: Color.fromARGB(255, 189, 110, 174),
              fontFamily: 'Lucy',
              fontSize: 28.0)
            ),
            const SizedBox(height: 5),
            Text(cake.ingredients),
            const SizedBox(height: 5),
            Wrap(
            spacing: 8.0, // Space between chips
            runSpacing: 4.0, // Space between lines
            children: cake.category
                .split(',')
                .map((category) => Chip(
                      label: Text(
                        '#${category.trim()}', // Add hashtag and trim spaces
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: const Color.fromARGB(255, 234, 165, 188), // Oval pink shape
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Oval shape
                      ),
                    ))
                .toList(),
          ),
          ],))]
        
      ),
    );
  }

}