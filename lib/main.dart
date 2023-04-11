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

PageController _myPage = PageController(initialPage: 0);
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#1c0b4a'.toColor(),

      body: bodyContent,

      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          setState(() {
            _selectedIndex = -1;
            _myPage.jumpToPage(4);
          });
        },

        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0,10),
                blurRadius: 20,
                color: '#9Aad6ae0'.toColor()
              )
            ],
            shape: BoxShape.circle,
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
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bodyContent {
    return PageView(
      controller: _myPage,
      onPageChanged: (int) {
        print('Page Changes to index $int');
      },
      children: <Widget>[
        Center(
          child: Container(
            child: Text('Empty Body 0'),
          ),
        ),
        Center(
          child: Container(
            child: Text('Empty Body 1'),
          ),
        ),
        Center(
          child: Container(
            child: Text('Empty Body 2'),
          ),
        ),
        Center(
          child: Container(
            child: Text('Empty Body 3'),
          ),
        )
      ],
      physics:
          NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
    );
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
              padding: const EdgeInsets.only(left: 8),
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
                        _myPage.jumpToPage(0);
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
                        _myPage.jumpToPage(1);
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
                        _myPage.jumpToPage(2);
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
              padding: const EdgeInsets.only( right: 8),
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
                        _myPage.jumpToPage(3);
                      });
                    },
                  ),
                  Text(
                    'News',
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
