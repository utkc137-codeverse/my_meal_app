import 'package:flutter/material.dart';
import '../widget/main_drawer.dart.dart';
import 'favourite_screen.dart';
import 'categories_screen.dart';


class TabsScreen extends StatefulWidget{
  @override
 _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>{

 final List<Map<String , Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouriteScreen(), 'title': 'Favourite' },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title']),
          ),
          drawer: MainDrawer(),
          body: _pages[_selectedPageIndex]['page'],
          bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('Categories')),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('favourite')),
        ]),
    );
  }
}