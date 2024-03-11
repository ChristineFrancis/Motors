import 'package:carpro/controller/filterController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/appBar.dart';
import 'package:carpro/mywidget/myButton.dart';
import 'package:carpro/mywidget/myText.dart';
import 'package:carpro/mywidget/mytextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

// ignore: must_be_immutable
class Filter extends StatelessWidget {
   Filter({super.key});
  double _lowerValue=36000;
   double _upperValue=186000;
  @override
  Widget build(BuildContext context) {
    Get.put(FilterController());
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),

        child: MyAppBar(appbarText: 'Filter' ,), ),
        body: GetBuilder<FilterController>(builder: (controller)=>
        ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8 ,right: 30 ),
            child: MyTextFormField(textAboveFormField: 'Model',),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8 ,right: 30 ),
            child: MyTextFormField(textAboveFormField: 'Company',),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 35 , top: 10 , bottom: 30),
            child: MyText(name: 'Price'),
           
          ),
        
          RangeSliderFlutter(
            // key: Key('3343'),
            values: [_lowerValue, _upperValue],
            rangeSlider: true,
            tooltip: RangeSliderFlutterTooltip(
              alwaysShowTooltip: true,
            ),
            max: 286000,
            textPositionTop: -100,
            handlerHeight: 30,
            trackBar:RangeSliderFlutterTrackBar(
              activeTrackBarHeight: 10,
              inactiveTrackBarHeight: 10,
              activeTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: myColor.myGrey,
              ),
              inactiveTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),

            min: 0,
            fontSize: 15,
            textBackgroundColor:myColor.myGrey,
            onDragging: (handlerIndex, lowerValue, upperValue) {
              _lowerValue = lowerValue;
              _upperValue = upperValue;
              controller.updateCode();
            },
          ),

           Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 35 , ),
              child: Text('min' , style: TextStyle(color: myColor.myGrey , ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220 , ),
              child: Text('max' , style: TextStyle(color: myColor.myGrey , ),),
            ),
           ],),

       Padding(
         padding: const EdgeInsets.only(left: 35 , top: 20 , bottom: 2),
         child: Text(
           'Launch Year ',
           style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w400, fontSize: 17),
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 35 , top: 10 , bottom: 20 , right: 50),
         child: TextField(onTap: () { controller.yearPicker();},
         readOnly: true,
         controller: TextEditingController(
            text:controller.selectedDateText ,
          ),
           decoration: InputDecoration(
             //suffixIcon: suffix,
             enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color:  myColor.myGrey)),
             focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:  myColor.myGrey)),
           ),
         ),
       ),

         
        MaterialButton(onPressed: () {  },
        child: const MyButton(buttonText: 'Apply', buttonWidth: 150, ))
     

          
        ],),

    ));
  }
}