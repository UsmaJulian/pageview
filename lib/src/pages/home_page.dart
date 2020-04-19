import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final _kTabPages = <Widget>[
    Center(child: _buildHombre()),
    Center(child: _buildMujer()),
    Center(child: _buildNino()),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _kTabPages.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _kTabs = <Tab>[
      Tab(
        child: Text(
          'Hombre',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          'Mujer',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          'Niño',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            TabBarView(
              controller: _tabController,
              children: _kTabPages,
            ),
            SafeArea(
              child: TabBar(
                tabs: _kTabs,
                indicatorColor: Colors.white,
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static _buildHombre() {
    return Container(
      height: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/noimage2.png'),
        image: NetworkImage(
            'https://4.bp.blogspot.com/-kGaf39wj_sE/WTWyGVChkYI/AAAAAAAAJ6g/mGBeWJHCYzcXhyxYgfQcewUzFLTqmN1fgCLcB/s1600/videotogif_2017.04.29_17.17.34%255B1%255D.gif'),
        fit: BoxFit.fill,
      ),
    );
  }

  static _buildMujer() {
    return Container(
      height: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/noimage2.png'),
        image: NetworkImage(
            'https://lh3.googleusercontent.com/proxy/TfDDBZ6ktuJU9IYzzOxR0spJKS3NL4JFDT8RDPTh30AOQhW9e4nQD3eFMQVYWHdHhAUL6hx6QubH3zCDED6s'),
        fit: BoxFit.cover,
      ),
    );
  }

  static _buildNino() {
    return Container(
      height: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/noimage2.png'),
        image: NetworkImage(
            'https://lh3.googleusercontent.com/proxy/2ZlUpfCd4z_YPkZNe1X7eqRJrvMZ4Gw7R-tDpkF0VRD1INA3VqlWbYimBMmWFfnZENI3hCvCdTObByNCeMlLL53dmx34MwKKN1q3ZU-OvNlitRv-ojOrzPKivR-yYwN-s7tU'),
        fit: BoxFit.cover,
      ),
    );
  }
}
