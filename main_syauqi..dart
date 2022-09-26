import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './detail_data.dart';

class MainSyauqi extends StatefulWidget {
  @override
  State<MainSyauqi> createState() => _MainSyauqiState();
}

class _MainSyauqiState extends State<MainSyauqi> {
  final List data = [
    'Manchester United',
    'Manchester City',
    'Liverpool',
    'Chelsea',
    'Arsenal',
    'Real Madird',
    'Barcelona',
    'Atletico Madrid',
    'Sevilla',
    'Villareal',
    'AC Milan',
    'Juventus',
    'Inter Milan',
    'Napoli',
    'AS Roma',
    'Bayer Munchen',
    'Borussia Dortmund',
    'RB Leipzig',
    'Shalke 04',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: const Text('Aplikasi Syauqi Nur Hibatullah'),
        ),
      ),
      // body: ListView.builder(
      //     itemCount: data.length,
      //     itemBuilder: (BuildContext context, index) {
      //       return Card(
      //           elevation: 10,
      //           shadowColor: Colors.red,
      //           child: ListTile(
      //             title: Text(
      //               data[index],
      //               style: TextStyle(fontSize: 20),
      //             ),
      //             subtitle: Text('Nama Tim Sepak Bola = ' + data[index]),
      //             leading: CircleAvatar(
      //               child: Text(data[index][0]),
      //             ),
      //             trailing: IconButton(
      //                 onPressed: () {
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                         builder: (context) => const DataSyauqi(),
      //                       ));
      //                 },
      //                 icon: Icon(Icons.search)),
      //           ));
      //     }),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
              elevation: 10,
              shadowColor: Colors.red,
              child: ListTile(
                title: Text(
                  data[index],
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Nama Tim Sepak Bola = ' + data[index]),
                leading: CircleAvatar(
                  child: Text(data[index][0]),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DataSyauqi(),
                          ));
                    },
                    icon: Icon(Icons.search)),
              ));
        },
        separatorBuilder: (context, position) {
          if ((position + 1) % 5 == 0) {
            return Card(
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Tim Terkuat Musim ini Di Liga',
                      style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                ));
          };
          return Divider();
        },
        itemCount: data.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 159, 5),
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Colors.white.withOpacity(.80),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_sharp), label: 'Friends'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Followers'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'Story'),
          ]),
    );
  }
}
