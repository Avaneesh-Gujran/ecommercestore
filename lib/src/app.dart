import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  MyApp({super.key});


// ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context){
    int counter = 0;
    return MaterialApp(
      home: Container(
        color: Colors.blueGrey,
        alignment: Alignment.center,
      
        width: 150,
        child:Scaffold(appBar: AppBar(title: const Text("Welcome to Ecommerce",textDirection: TextDirection.ltr,),
        
        ),
        body: GridView.count(crossAxisCount: 3,
        children: List.generate(10,(int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Column(
              children: [
              Image.asset("assets.jpg"),
              Text("Item $counter",textDirection: TextDirection.ltr),
              Text("Price",textDirection: TextDirection.ltr),
              Text("Delivered Within:",textDirection: TextDirection.ltr),
              Text("Vendor:",textDirection: TextDirection.ltr),
                  
            ]),),
          );
        }),),
        ),
      
      ),
    )
    ;
  }
  
}
