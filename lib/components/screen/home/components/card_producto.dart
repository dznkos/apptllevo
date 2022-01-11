import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class CardProducto extends StatelessWidget {
  const CardProducto({
    Key? key, required this.image, required this.name, required this.priceb, required this.pricea,
  }) : super(key: key);


  final String image;
  final String name;
  final String priceb;
  final String pricea;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 0.5.sh,
      width: 0.4.sw,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          Container(
            //color: Colors.black,
            height: 0.3.sh,
            width: 0.3.sh,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(image,
                  fit: BoxFit.contain,),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: (){
                      print('favorite');
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      alignment: Alignment.center,
                      width: 40.h,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFE1E1E1),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: SvgPicture.asset("assets/icons/heart.svg",
                      height: 22.h,),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            
            height: 0.2.sh,
            width: 0.3.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70.h,
                  child: Text(name,
                  style: Theme.of(context).textTheme.headline6 ,
                  ),                                
                ),
                Container(
                  height: 35.h,
                  child: Text(priceb,
                  style: Theme.of(context).textTheme.subtitle1,
                  ),                                
                ),
                Row(
                  children: [
                    Container(
                      height: 45.h,
                      child: Text(pricea,
                      style: Theme.of(context).textTheme.subtitle2,
                      ),                                
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      color: Color(0xFFDE2756),
                      padding: EdgeInsets.all(3),                                    height: 30.h,
                      child: Text('40% dto',
                      style: Theme.of(context).textTheme.bodyText1,
                      ),                                
                    ),
                  ],
                ),
                Container(
                  height: 30.h,
                  child: Text('Envio Gratis',
                  style: Theme.of(context).textTheme.bodyText2,
                  ),                                
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

