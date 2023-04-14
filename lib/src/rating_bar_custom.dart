// lib/src/rating_bar_custom.dart
import 'package:flutter/material.dart';

class RatingBarCustom extends StatefulWidget {

  //Properties 
  int numberStars;
  double starCount;
  Color colorStar;
  double sizeIcon; 

  //Constructores
  RatingBarCustom({
    super.key, 
    this.numberStars = 5,
    this.starCount = 1.0,
    this.sizeIcon = 24.0,
    required
    this.colorStar
  });

  @override
  State<RatingBarCustom> createState() => _RatingBarCustomState();
}

class _RatingBarCustomState extends State<RatingBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: dynamicIcons(),
    );
  }

  List<Widget> dynamicIcons(){
    int count = 1;
    bool flagDecimal =  false;

    var numStarString  = widget.starCount.toString();
    var arrNum  = numStarString.split('.');

    return List<Widget>.generate(widget.numberStars, (int index) {
         if(count <= int.parse(arrNum[0])){
            count += 1;
            return typeIconStar(Icons.star);
         }else if(int.parse(arrNum[1]) != 0 && flagDecimal == false){
            count += 1;
            flagDecimal = true;
            return typeIconStar(Icons.star_half);
         }else if(count > int.parse(arrNum[0])){
            count += 1;
            return typeIconStar(Icons.star_border);
         } 
        
        return Container();
        
    });
  }


  Widget typeIconStar(IconData icon){

    return Container(
          margin:  const EdgeInsets.only(right: 3.0),
          child: Icon(
            icon,
            color: widget.colorStar,
            size: widget.sizeIcon,
          ),
    );
  }
}