import 'package:flutter/material.dart';

import 'package:apptllevo/components/screen/home/components/body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    color: Color(0xFFE1E1E1),
                    child: SvgPicture.asset("assets/icons/drawer/user.svg",
                    color: Color(0xFF707070),
                    fit: BoxFit.cover,
                    height: 40,
                    )
                    ),
                  ),
                Expanded(                  
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('¿Deseas acceder a los\nmejores descuentos?',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black ) ,),
                    ),
                  )
                )

              ],
            ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: MaterialButton(
                height: 50,
                onPressed: (){
                  print('button');
                },
                color: Color(0xFF3483FA),
                child: Text('Iniciar Sesion', 
                style: TextStyle(fontSize: 16, color: Colors.white) ,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child:Divider(                    
                    color: Color(0xFFCCCCCC),
                  )
            ),

            Container(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  ListTile(
                    tileColor: Color(0xFF642EAC),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo920.svg",),
                    title: Text('Inicio',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo921.svg",
                    color: Color(0xFF000000),),
                    title: Text('Buscar',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),)),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo922.svg",
                    color: Color(0xFF000000),),
                    title: Text('Mis Compras',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),)),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo923.svg",
                    color: Color(0xFF000000),),
                    title: Text('Favoritos',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo1006.svg",
                    ),
                    title: Text('Descuentos',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo1007.svg",
                    ),
                    title: Text('Historial',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo1005.svg",
                    ),
                    title: Text('Mi cuenta',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10,),
                    child:Divider(                    
                          color: Color(0xFFCCCCCC),
                        )
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo926.svg",
                    ),
                    title: Text('Vender',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10,),
                    child:Divider(                    
                          color: Color(0xFFCCCCCC),
                        )
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo927.svg",
                    ),
                    title: Text('Tiendas Oficiales',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10,),
                    child:Divider(                    
                          color: Color(0xFFCCCCCC),
                        )
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo957.svg",
                    ),
                    title: Text('Ayuda',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFFFFF),
                    leading: SvgPicture.asset("assets/icons/drawer/Grupo957-1.svg",
                    ),
                    title: Text('Acerca De',
                    style: GoogleFonts.barlow(
                      textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                      color: Color(0xFF000000))),
                    ),
                  )

                ],
              ),
            )



          ],
        ),
      ),
      body: Body(),
    );
  }
}