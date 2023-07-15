

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controller/categories_controller.dart';
import 'categories_name_yard.dart';


// class AppBarHome extends StatelessWidget {
//   const AppBarHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double widthSize = MediaQuery.of(context).size.width;
//     //double heightSize = MediaQuery.of(context).size.height;
//     return SliverToBoxAdapter(
//       child: SafeArea(
//         child: Container(
//           color: Colors.white,
//           width: widthSize,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 12),
//             child: SizedBox(
//               height: 59,
//               width: widthSize-12,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: Icon(CupertinoIcons.search,size: 35,),
//                     ),

//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [

//                         Text("LOGO",style: TextStyle(fontSize: 22,height: 1,fontWeight: FontWeight.bold),),
//                         Text("Booking",style: TextStyle(fontSize: 14.6,height: 1,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
                    
//                     const Padding(
//                       padding: EdgeInsets.only(right: 20),
//                       child: Icon(CupertinoIcons.bell,size: 35,),
//                       )
//                     ]
//                   )
//                 ),
//               ),
//         ),
//       ),
//     );
//   }
// }

class AppBarScrolling extends StatelessWidget {
  AppBarScrolling({super.key});

  final CategoriesController allCat = CategoriesController();
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return SliverAppBar(
      toolbarHeight: 150.0,
      excludeHeaderSemantics: true,
      floating: false,
      expandedHeight: 220,
      pinned: true,
      scrolledUnderElevation: 0,
      flexibleSpace: FlexibleSpaceBar(
      expandedTitleScale: 1,
      centerTitle: false,
      titlePadding:const EdgeInsetsDirectional.only(start: 0, bottom: 0,top: 0) ,
        collapseMode: CollapseMode.pin,
        title: SizedBox(
          height: 135,
          child: Column(
            children: [
              const CategoriesNameYard(name: "الفئات",more: false,),
              Container(
                color: Colors.white,
                width: widthSize,
                child: SizedBox(
                height: 100,
                width: widthSize-12,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16,right: 16,top: 12),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(allCat.listCategories.length, (index){ 
                            NameCat categories = allCat.listCategories[index];
                            return Container(
                              width: widthSize/5,
                              decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 241, 241, 241), width: 2,),
                              borderRadius: const BorderRadius.all(Radius.circular(12))
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    Image.asset(categories.imageCatUrl,height: 32,),
                                    Text(categories.mameCat,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: "Almarai",color: Colors.black),)
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
      
      background: SafeArea(
        child: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        width: widthSize,
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: SizedBox(
            height: 59,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(CupertinoIcons.search,size: 35,),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("LOGO",style: TextStyle(fontSize: 22,height: 1,fontWeight: FontWeight.bold),),
                    Text("Booking",style: TextStyle(fontSize: 14.6,height: 1,fontWeight: FontWeight.bold),),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(CupertinoIcons.bell,size: 35,),
                )
              ]
            )
          ),
        ),
        ),
      ),
      ),   
    );
  }
}