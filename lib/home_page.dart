import 'package:covid_emergency/news/pop_up_screen.dart';
import 'package:covid_emergency/tabscreens/news_screen.dart';
import 'package:covid_emergency/tabscreens/precaution_screen.dart';
import 'package:covid_emergency/tabscreens/symptoms_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'news/report_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  void _handleTabIndex() {
    setState(() {});
  }

  final tabs = <Widget>[
    Tab(
      text: 'NEWS',
    ),
    Tab(
      text: 'SYMPTOMS',
    ),
    Tab(
      text: 'PRECAUTIONS',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff30298d),
      floatingActionButton: Visibility(
        visible: _tabController.index == 0 ? true : false,
        child: RawMaterialButton(
          fillColor: Color(0xFF30298D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(44.0)),
            side: BorderSide(width: 120.0),
          ),
          child: Text(
            'REPORT',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            //TODO: add floating button functionality
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ReportScreen();
                });
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF30298D),
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(
              Radius.circular(44.0),
            ),
          ),
          height: 35.0,
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    //TODO: add speech recognition
                  },
                )),
          ),
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Settings'),
              ),
              PopupMenuItem(
                child: Text('Saved Pages'),
                value: 2,
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PopUp1()),
                );
              }
              else {
                print('value: $value');
              }
            },
            offset: Offset(0, 50),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          NewsScreen(),
          SymptomsScreen(),
          PrecautionScreen(),
        ],
      ),
    );
  }
}
