import 'package:flutter/material.dart';

import '../../../../core/utils/colors_manager.dart';

class TasbehTab extends StatefulWidget {

   TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter =0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 300,
            width: double.infinity,
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,

                children: [
              Positioned(
                  right: 110,
                  bottom: 230,
                  child: Image(image: AssetImage("assets/images/head of seb7a.png"))),
                  Positioned(
                    bottom: -20,
                      child: Image(image: AssetImage("assets/images/body of seb7a.png"),)),
                ],

              ),

            ),
          ),


        ),

        Text("عدد التسبيحات",style:  Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontWeight: FontWeight.w600, fontSize: 25,),),
        Container(
          height: 90,
width: 69,
decoration: BoxDecoration(
  color: ColorsManager.lightBrownColor,
borderRadius: BorderRadius.circular(30)
),
          child: Center(child: Text(counter.toString() ,style:Theme.of(context).textTheme.titleSmall)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(onPressed: (){
            counter++;
            setState(() {

            });

          },child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("سبحان الله",style: Theme.of(context).textTheme.labelMedium,),
          ),color: ColorsManager.lightBrownColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),


          ),
        )

      ],
    );
  }
}
