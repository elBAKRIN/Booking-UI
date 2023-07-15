

import 'package:flutter/material.dart';
import '../../controller/categories_controller.dart';
import 'categories_name_yard.dart';

class CategoriesHome extends StatelessWidget {
  CategoriesHome({super.key});

  final CategoriesController allCat = CategoriesController();
  
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
            child: Column(
              children: [
                const CategoriesNameYard(name: "الفئات",more: false,),
                Container(
                  color: Colors.white,
                  width: widthSize,
                  child: SizedBox(
                    height: 90,
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
                                          Text(categories.mameCat,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: "Almarai"),)
                                        ],
                                      ),
                                    ),
                                  );
                              }
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}