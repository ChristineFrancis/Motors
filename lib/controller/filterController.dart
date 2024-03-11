import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController{
  DateTime? _selectedDate;
  String get selectedDateText {
    return _selectedDate != null
        ? "${_selectedDate!.year}"
        : "";
  }
  void updateCode(){update();}
  void yearPicker(){
  Get.defaultDialog(
         title: "Select Year",
          content: Container( 
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate:  DateTime(DateTime.now().year - 10, 1),
              lastDate: DateTime(DateTime.now().year , 1),
              
              selectedDate:  _selectedDate,
              onChanged: (DateTime dateTime) {
            
                _selectedDate = dateTime;
                Get.back();
                update();

              },
              
            ),
          ),

         );


  }
}