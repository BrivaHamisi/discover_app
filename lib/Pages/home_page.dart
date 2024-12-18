import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<HomePage> {
  List<String> _locations = ['Nairobi', 'Mombasa', 'Tunis', 'Kisumu'];
  int _activeLocation =1;


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        left: false,
        right: false,
        bottom: true,
        minimum: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, 0, MediaQuery.of(context).size.width * 0.05, 0),

        child: _mainColmn(context),)
    );
  }

  Widget  _mainColmn(BuildContext _context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.menu,
                size: 35,
                color: Colors.black,
              ),
              Container(
                height: 39,
                width: 144,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/logo_discover.png')),
                ),
              ),
              Icon(
                Icons.search,
                size: 35,
                color: Colors.black,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(_context).size.height *0.05),
            child: _locationBar(_context),)
        ]
      );
  }

  Widget _locationBar(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(color: Color.fromRGBO(69, 69,69, 1),
      borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _locations.map((l){
          bool _isActive = _locations[_activeLocation] == l ? true : false;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text(l, style: TextStyle(fontSize: 16, color: _isActive ? Colors.white : Colors.white54, fontFamily: 'Montserrat' ),
            ),
            _isActive ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
                ),
              height: 5,
              width: 40,
            ) : Container(),
          ],);
        }).toList(),
      ),
    );
  }
}
