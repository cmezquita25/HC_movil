import 'package:flutter/material.dart';


class LayoutInicio extends StatefulWidget {
  const LayoutInicio({Key? key}) : super(key: key);

  @override
  State<LayoutInicio> createState() => _LayoutInicio();
}

class _LayoutInicio extends State<LayoutInicio> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Inicio', style: optionStyle,),
    //Tours
    Text('Tours', style: optionStyle,),

    //Populares
    Text('Populares', style: optionStyle,),

    //Pois
    Text('POIs', style: optionStyle,),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Handcraft Route'),
        backgroundColor: Colors.purple[800],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget> [DrawerHeader(
            decoration: BoxDecoration(color: Color.fromRGBO(106, 27, 154, 1)),
            child: Text(
              'Panel de Navegación',
              style: TextStyle(color: Colors.white,
              fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Mi Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Cerrar Sesión'),
          ),
          ],
      ),
            
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Tours',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond),
            label: 'Populares',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            label: 'POIs',
          ),


        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
        unselectedItemColor: Colors.grey[600],
        onTap: _onItemTapped,
      ),
    );
  }
}