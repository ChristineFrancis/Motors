import 'package:carpro/controller/bottomNavigationBarController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myListTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatelessWidget {
   Home({super.key});


  @override
  Widget build(BuildContext context) {
    
    final BottomNavBarController controller=Get.put(BottomNavBarController());
    return Scaffold(
       
      body:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
           Padding(
                padding: const EdgeInsets.only(top: 35 , left: 30),
                child: Text('Home' , 
                     style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w900, fontSize: 36 , fontFamily: 'Inter'  ) ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                       Container(
                  padding: const EdgeInsets.only(top: 10 , left:20 ), width: 300 ,height: 60,
                  child:  TextField( 
                    decoration: InputDecoration(prefixIcon:const Icon (Icons.search),
                    hintText: 'Search',
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2 , color: myColor.myGrey ,  )),
                      focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: myColor.myGrey))
                    ),
                  ),
                ) ,
            
                  MaterialButton(
                    onPressed: () { controller.goToFilterPage(); },
                    child: Image.asset('images/Vector (3).png'))
                ],
              ),
              
         Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.carsCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(key: ValueKey(controller.carsCategory[index]),
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      dismissible: DismissiblePane(key: ValueKey(controller.carsCategory[index]),
                        onDismissed: () { controller.removeCar(index);  
                        
                        }),
                     children: [
                      SlidableAction(
                        onPressed: (context){}
                      
                      ,icon:Icons.remove_circle_outline ,foregroundColor: Colors.red,label: 'not interested',
                      
                       )
                     ]
                     
                     ),
                    
                    child: MyListTile(
                      smallImage: controller.carsCategory[index].smallImage,
                      carName1: controller.carsCategory[index].carName1,
                      carName2: controller.carsCategory[index].carName2,
                      price: controller.carsCategory[index].price,
                      bigImage: controller.carsCategory[index].bigImage,
                       model: controller.carsCategory[index].model,
                        luanchYear: controller.carsCategory[index].luanchYear,
                         company: controller.carsCategory[index].company,
                         battery: controller.carsCategory[index].battery,
                         engine: controller.carsCategory[index].engine,
                         horsepower: controller.carsCategory[index].horsepower,
                         rating: controller.carsCategory[index].rating,
                         
                    ),
                    
                    );
                  
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
