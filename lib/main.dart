import 'package:crypto_wallet/extentions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int _selectedIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: '#1c0b4a'.toColor(),

      body:bodyContent,



      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          setState(() {
            _selectedIndex = -1;
          });
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // circular shape
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                '#ad6ae0'.toColor(),
                '#805dca'.toColor(),
              ],
            ),
          ),
          child: Icon(
            Icons.swap_horiz,
            size: 30,
            color: Colors.white,
          ),
        ),

        //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center
      bottomNavigationBar: bottomNavigationBar,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget get bodyContent {
    return Container();
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: BottomAppBar(
        //bottom navigation bar on scaffold
        color: '#2a1a61'.toColor(),
        shape: CircularNotchedRectangle(),
        //shape of notch
        notchMargin: 8,
        //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.home_outlined,
                        color: _selectedIndex == 0
                            ? Colors.white
                            : '#675898'.toColor()),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  Text(
                    'Home',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: _selectedIndex == 0
                            ? Colors.white
                            : '#675898'.toColor()),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.newspaper_outlined,
                        color: _selectedIndex == 1
                            ? Colors.white
                            : '#675898'.toColor()),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  Text(
                    'News',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: _selectedIndex == 1
                            ? Colors.white
                            : '#675898'.toColor()),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.wallet_outlined,
                        color: _selectedIndex == 2
                            ? Colors.white
                            : '#675898'.toColor()),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                  Text(
                    'Wallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: _selectedIndex == 2
                            ? Colors.white
                            : '#675898'.toColor()),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.settings_outlined,
                        color: _selectedIndex == 3
                            ? Colors.white
                            : '#675898'.toColor()),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                  ),
                  Text(
                    'Settings',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: _selectedIndex == 3
                            ? Colors.white
                            : '#675898'.toColor()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
