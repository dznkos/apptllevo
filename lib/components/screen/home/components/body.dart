

import 'package:apptllevo/components/screen/home/components/card_producto.dart';
import 'package:apptllevo/components/screen/home/components/category.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {     

    final List<String> imgList = [
        'Grupo954.png',
        'Grupo951.png',
        'Enmascarargrupo57.png',
        ];

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: [
          Container(
                color: Color(0xFF4C2EAC),
                child: _customAppBar(context),
                  ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    Stack(
                      children: [                      
                        Container(
                          color: Color(0xFF4C2EAC),
                          height: 0.15.sh,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _customSearch(context),
                            _carouselPromo(imgList, (size.width > 650) ? "../assets/images/2x" : "../assets/images"),
                          ],
                        )
                      ]
                    ),                    
                    
                    //CATEGORIAS
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            //Categoria
                            Category(name:"Todas Categorias",image:"assets/images/Grupo1876.png"),
                            Category(name:"Videojuegos",image:"assets/images/Grupo1880.png"),
                            Category(name:"Moda",image:"assets/images/Grupo1875.png"),
                            Category(name:"Computacion",image:"assets/images/Grupo1877.png"),
                            Category(name:"Audio",image:"assets/images/Grupo1878.png"),
                            Category(name:"Televisores",image:"assets/images/Grupo1879.png"),
                          ],
                        ),
                      ),
                    ),
                    
                    // //CARD
                    // Container(
                    //   margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    //   padding: EdgeInsets.only(top: 20.h, bottom: 10.h,left: 20.w, right: 20.w),
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10)
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       Text('Disfruta mejor la experiencia y crea tu cuenta Tllevo!',
                    //       style: Theme.of(context).textTheme.headline5,),
                    //       Row(
                    //         children: [
                    //           Expanded(
                    //             child: MaterialButton(
                    //               color: Color(0xFF4C2EAC),
                    //               //height: 50.h,
                    //               onPressed: (){},
                    //               child: Text('Crea tu cuenta', 
                    //                 style: Theme.of(context).textTheme.headline3,),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       Row(
                    //         children: [
                    //           Expanded(
                    //             child: MaterialButton(
                    //               color: Color(0xFFFFFFFF),
                    //               onPressed: (){},
                    //               child: Text('Iniciar Sesion', 
                    //                 style: Theme.of(context).textTheme.headline4,),
                    //             ),
                    //           ),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),                  
                    
                    // //TITULO  TE MERECES
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 18.w),
                    //   child: Container(
                    //     //color: Colors.blue,
                    //     height: 0.1.sh,
                    //     child: Row(
                    //       children: [
                    //         Expanded(
                    //           child: Text('Te Mereces todo esto',
                    //             style: Theme.of(context).textTheme.overline ,
                    //           )
                    //         ),
                    //         MaterialButton(
                    //           onPressed: (){},
                    //           child: Text('Ver Todas >',
                    //           style: Theme.of(context).textTheme.button 
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
          
                    // //LIST PRODUCTOS
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 18.w),
                    //   child: Container(
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           children: [
                    //             CardProducto( image: "assets/images/120551_01.png", name:'Refrigeradora Samsung Top Freezer Con Twin Cooling lus', priceb: '\$1.740', pricea: '\$870',),
                    //             CardProducto( image: "assets/images/120551_01.png", name:'Refrigeradora Samsung Top Freezer Con Twin Cooling lus', priceb: '\$1.740', pricea: '\$870',),
                    
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             CardProducto( image: "assets/images/120551_01.png", name:'Refrigeradora Samsung Top Freezer Con Twin Cooling lus', priceb: '\$1.740', pricea: '\$870',),
                    //             CardProducto( image: "assets/images/120551_01.png", name:'Refrigeradora Samsung Top Freezer Con Twin Cooling lus', priceb: '\$1.740', pricea: '\$870',),
                    
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                
                    //  //TITULO novedades
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 18.w),
                    //   child: Container(
                    //     //color: Colors.blue,
                    //     height: 0.1.sh,
                    //     child: Row(
                    //       children: [
                    //         Expanded(
                    //           child: Text('Novedades',
                    //             style: Theme.of(context).textTheme.overline ,
                    //           )
                    //         ),
                    //         MaterialButton(
                    //           onPressed: (){},
                    //           child: Text('Ver Todas >',
                    //           style: Theme.of(context).textTheme.button 
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
          
                    //card  
                    // Padding(
                    //   padding: EdgeInsets.only(left: 18.w, right: 18.w, bottom: 25.h),
                    //   child: Container(
                    //       height: 0.3.sh,
                    //       decoration: BoxDecoration(
                    //         color: Color(0xFF00AE3A),
                    //         borderRadius: BorderRadius.circular(10)
                    //         ),
                    //       child: Row(
                    //         children: [
                    //           Expanded(
                    //             child: Container(
                    //               padding: EdgeInsets.only(top: 20.h, left: 20.h, bottom: 10.h),
                    //               child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   Text('Grandes ofertas en articulos y accesorios deportivos',
                    //                   style: Theme.of(context).textTheme.caption,
                    //                   ),
                    //                   MaterialButton(
                    //                     shape: RoundedRectangleBorder(
                    //                       side: BorderSide(
                    //                         color: Colors.white, width: 1
                    //                       ),
                    //                       borderRadius: BorderRadius.circular(4)
                    //                     ),
                    //                     onPressed: (){},
                    //                     child: Text('Ver Todas >',
                    //                     style: GoogleFonts.poppins( textStyle: 
                    //                           TextStyle(
                    //                             fontSize: 14.sp,
                    //                             color: Color(0xFFFFFFFF),
                    //                             fontWeight: FontWeight.w400),
                    //                             )
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ),
                    //           Expanded(
                    //             child: Image.asset("assets/images/Enmascarargrupo43.png",
                    //             fit: BoxFit.cover,),
                    //           )
                    //         ],
                    //       ),
          
                    //   ),
                    //   ),
          
                    // //card 2
                    // Padding(
                    //   padding: EdgeInsets.only(left: 18.w, right: 18.w, bottom: 25.h),
                    //   child: Container(
                    //       height: 0.3.sh,
                    //       decoration: BoxDecoration(
                    //         color: Color(0xFFFFFFFF),
                    //         borderRadius: BorderRadius.circular(10)
                    //         ),
                    //       child: Row(
                    //         children: [
                    //           Expanded(
                    //             child: Container(
                    //               padding: EdgeInsets.only(top: 20.h, left: 20.h, bottom: 10.h),
                    //               child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   Text('Todo en articulo y accesorios para tu cocina',
                    //                   style: GoogleFonts.poppins( textStyle: TextStyle(
                    //                         fontSize: 20.sp,
                    //                         color: Color(0xFF2D2D2D),
                    //                         fontWeight: FontWeight.w500,
                    //                         letterSpacing: 0.5)
                    //                         ),
                    //                   ),
                    //                   MaterialButton(
                    //                     shape: RoundedRectangleBorder(
                    //                       side: BorderSide(
                    //                         color: Colors.black, width: 1
                    //                       ),
                    //                       borderRadius: BorderRadius.circular(4)
                    //                     ),
                    //                     onPressed: (){},
                    //                     child: Text('Ver Todas >',
                    //                     style: GoogleFonts.poppins( textStyle: 
                    //                           TextStyle(
                    //                             fontSize: 14.sp,
                    //                             color: Color(0xFF2D2D2D),
                    //                             fontWeight: FontWeight.w400),
                    //                             )
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ),
                    //           Expanded(
                    //             child: Image.asset("assets/images/Enmascarargrupo42.png",
                    //             fit: BoxFit.cover,),
                    //           )
                    //         ],
                    //       ),
          
                    //   ),
                    //   ),
          
                    //TITULO CATEGORIAS
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                    //   child: Container(
                    //     //color: Colors.blue,
                    //     //height: 0.1.sh,
                    //     child: Row(
                    //       children: [
                    //         Expanded(
                    //           child: Text('Categorias',
                    //             style: Theme.of(context).textTheme.overline ,
                    //           )
                    //         ),
                    //         MaterialButton(
                    //           onPressed: (){},
                    //           child: Text('Ver Todas >',
                    //           style: Theme.of(context).textTheme.button 
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
          
                    //List CATEGORIAS
                    // Container(
                    //   padding: EdgeInsets.symmetric(vertical: 15.h),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //         children: [
                    //           //Categoria
                    //           Category(name:"Todas Categorias",image:"assets/images/Grupo1876.png"),
                    //           Category(name:"Videojuegos",image:"assets/images/Grupo1880.png"),
                    //           Category(name:"Moda",image:"assets/images/Grupo1875.png"),
                              
                    //         ],
                    //       ),
                    //       SizedBox(height: 25.h,),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //         children: [
                    //           //Categoria
                    //           Category(name:"Computacion",image:"assets/images/Grupo1877.png"),
                    //           Category(name:"Audio",image:"assets/images/Grupo1878.png"),
                    //           Category(name:"Televisores",image:"assets/images/Grupo1879.png"),
                              
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                ],            
              ),
            ),
          ),
        ],
      ) 
    );
  }

  Widget _customAppBar(context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        children: [
          CupertinoButton(
            child: SvgPicture.asset("assets/icons/Grupo3.svg"), 
            onPressed: ()=> Scaffold.of(context).openDrawer() ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topLeft,
              child: SvgPicture.asset("assets/icons/Grupo1950.svg"),
            ),
          ),
          CupertinoButton(
            child: SvgPicture.asset("assets/icons/Grupo2.svg"), 
            onPressed: (){}),
          CupertinoButton(
            child: SvgPicture.asset("assets/icons/Grupo1.svg"), 
            onPressed: (){})
        ],
      ),
    );
  }

  Widget _customSearch(context){
    return Padding(
      padding: EdgeInsets.only(left: 15,right: 15, bottom: 25),
      child: Container(
        height: 50,        
        padding: EdgeInsets.only(left: 20, right: 20),
        constraints: BoxConstraints(maxWidth: 600),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headline1
                ),
                //textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15, 
                  ),
                  hintText: "Busca el producto que deseas",
                  hintStyle: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headline1
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                
              ),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search_outlined, color: Color(0xFFA0A5A9),size: 28,)
            )
          ],
        ),

      ),
      );

  }

  Widget _carouselPromo(List<String> imgList, String pkg){     

      print('image,type: '+ pkg);
      return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: 0.25.sh,
          enableInfiniteScroll: false,
          aspectRatio: 2,
          disableCenter: true,
          viewportFraction: 1,
          enlargeCenterPage: false,
          pageSnapping: false,
        ),
        items: imgList
          .map( (item)=> Container(
            
            //margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(                
                fit: BoxFit.fitHeight,
                image: new AssetImage(
                  item,                  
                  package: pkg,
                  bundle: null,
                ))
            ),
            //child: Text(item),
            // child: Padding(
            //   // padding: ( imgList.indexOf(item) == imgList.length-1 )
            //   // ? EdgeInsets.only(right: 0)
            //   // : EdgeInsets.only(right: 10),
            //   child: Image.asset(item,
            //           fit: BoxFit.cover,
            //           package: '../assets',
            //           semanticLabel: 'Hola',
            //           ),
            // ),
          ) ).toList(),
        );  
    }




}
