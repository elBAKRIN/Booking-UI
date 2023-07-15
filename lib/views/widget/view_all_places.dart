
import 'package:booking_ui/controller/categories_controller.dart';
import 'package:booking_ui/views/widget/categories_name_yard.dart';
import 'package:booking_ui/views/widget/square_places.dart';
import 'package:flutter/material.dart';

import '../../controller/places_controller.dart';



class ViewAllProducts extends StatelessWidget {
  ViewAllProducts({super.key});

   final List<NameCat> allCat = CategoriesController().listCategoriesInPlace;
   final Map<String, List<PlaceInfo>> places = PlacesController().allplaces;
  
  
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(allCat.length, (index) {
            NameCat categories = allCat[index];
            return Column(
              children: [
                CategoriesNameYard(name: categories.mameCat,more: true,),
                const SizedBox(height: 12,),
                SizedBox(
                 width: MediaQuery.of(context).size.width,
                 height: 240,
                  child: ListView.builder(
                    reverse: true,
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: places[categories.mameCat]?.length,
                    itemBuilder: (context, indexPlaces) {

                      PlaceInfo placeInfo = places[categories.mameCat]![indexPlaces];
                      return SizedBox(
                        height: 226,
                        child: SquareProduct(place: placeInfo,));
                    }),
                ),
              ],
            );
          })
        ),
      ),
    );
  }
}