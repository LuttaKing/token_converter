import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

const primaryColor = Colors.indigo;
const secondaryColor = Color(0xFF877ABC);

const backGroundColor = Colors.black;


notifyUser(String title,String message,[Color? color]){
   Get.snackbar('', '',
             snackPosition: SnackPosition.TOP,backgroundColor:color==null ? Colors.green[700] :color,
             titleText: Text(title+'...',style: TextStyle(color: Colors.white),),
             messageText: Text(message,style: TextStyle(color: Colors.white,fontSize: 18),),margin: EdgeInsets.all(0.0),
             animationDuration: Duration(milliseconds: 500),duration: Duration(seconds: 4),
             borderRadius: 1.5,
             );
}