import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:menu_1/src/pages/first.dart';
import 'package:menu_1/src/pages/second.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<ScreenHiddenDrawer> items = [];

   @override
  void initState() {
    items.add(ScreenHiddenDrawer(
          ItemHiddenMenu(
          name: 'Pagina 1',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal, selectedStyle: const TextStyle(color: Colors.white),
        ),
        const FirstPage())
    );

    items.add(ScreenHiddenDrawer(
          ItemHiddenMenu(
          name: 'Pagina 2',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange, selectedStyle: const TextStyle(color: Colors.white),
        ),
        const SecondPage())
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      screens: items,
        //    typeOpen: TypeOpen.FROM_RIGHT,
        //    disableAppBarDefault: false,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
           slidePercent: 40.0,
           verticalScalePercent: 90.0,
           contentCornerRadius: 40.0,
        //  iconMenuAppBar: const Icon(Icons.menu),
        //  backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        //    whithAutoTittleName: true,
        //    styleAutoTittleName: TextStyle(color: Colors.red),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    elevationAppBar: 4.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
        //    enableShadowItensMenu: true,
          backgroundMenu: const DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/0e/ed/8c/0eed8c67eb867665f396f0c04c792c20.jpg'),
            fit: BoxFit.cover
          ),
    );
  }
}