

import 'package:flutter/material.dart';
import '../../controller/places_controller.dart';

class SquareProduct extends StatelessWidget {
  const SquareProduct({super.key,required this.place});

  final PlaceInfo place;  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12,left: 4,bottom: 20),
      child: Container(
        width: 242,
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(
          color: Color.fromARGB(248, 255, 255, 255),
          boxShadow: [BoxShadow(color: Color.fromARGB(26, 0, 0, 0),blurRadius: 13,offset: Offset(0.0,2.0))],
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Container(
                  width: 233,
                  height: 145,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Image.asset(place.image,width: 233,height: 145,fit: BoxFit.cover,)
                  ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0,left: 10.0,top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(place.name,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: "Almarai",height: 1.5),),
                  Text(place.location,style: const TextStyle(fontSize: 11,color: Color.fromARGB(255, 170, 166, 166),fontFamily: "Almarai",height: 2,fontWeight: FontWeight.w600,),textDirection: TextDirection.rtl,),
                  const SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text("ر.ي",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,fontFamily: "Almarai",color: Color.fromARGB(255, 170, 166, 166)),),
                          const SizedBox(width: 1,),
                          Text(place.price.toString(),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold,height: 1),),
                          const SizedBox(width: 1,),
                          const Text("/",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 170, 166, 166)),),
                          const SizedBox(width: 1,),
                          Text(place.hold,style: const TextStyle(fontSize: 11,fontWeight: FontWeight.w700,fontFamily: "Almarai",color: Color.fromARGB(255, 170, 166, 166),),),
                          const SizedBox(width: 1,),
                          Text(place.time,style: const TextStyle(fontSize: 11,fontWeight: FontWeight.w700,fontFamily: "Almarai",color: Color.fromARGB(255, 170, 166, 166),),),

                        ],
                      ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(place.rating.toString(),style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 170, 166, 166)),),
                              Image.asset("assets/images/icons/star.png",width: 10,)
                            ],
                          ),
                    ],
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}