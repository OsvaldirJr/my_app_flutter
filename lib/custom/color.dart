import 'package:flutter/material.dart';

class CustomColor{
  
  MaterialColor colorCustom;

  setcolor(){
    Map<int, Color> color =
      {
        50:Color.fromRGBO(64,224,208, .1),
        100:Color.fromRGBO(64,224,208, .2),
        200:Color.fromRGBO(64,224,208, .3),
        300:Color.fromRGBO(64,224,208, .4),
        400:Color.fromRGBO(64,224,208, .5),
        500:Color.fromRGBO(64,224,208, .6),
        600:Color.fromRGBO(64,224,208, .7),
        700:Color.fromRGBO(64,224,208, .8),
        800:Color.fromRGBO(64,224,208, .9),
        900:Color.fromRGBO(64,224,208, 1),
      };
   colorCustom= MaterialColor(0xFF4DB6AC, color);
  }
}