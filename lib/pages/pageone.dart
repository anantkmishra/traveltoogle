import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:icon_shadow/icon_shadow.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    AssetImage AppBarimg = AssetImage('images/imgAppBar.jpg');
    Image imgAppBar = Image(image: AppBarimg, width: 45);


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {},
          ),
          title: imgAppBar,
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Card(
                  shadowColor: Colors.black,
                  margin: EdgeInsets.all(20.0),
                  elevation: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: IconButton(
                              icon: IconShadowWidget(
                                Icon(
                                  Icons.dashboard,
                                  color: Colors.red[900],
                                  size: 40,
                                ),
                                shadowColor: Colors.black,
                              ),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'DASHBOARD',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: IconButton(
                              icon: IconShadowWidget(
                                Icon(
                                  MdiIcons.bullseyeArrow,
                                  color: Colors.red[900],
                                  size: 40,
                                ),
                                shadowColor: Colors.black,
                              ),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'PRIORITY LOOK',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              child: IconButton(
                                icon: IconShadowWidget(
                                  Icon(
                                    Icons.people,
                                    color: Colors.red[900],
                                    size: 40,
                                  ),
                                  shadowColor: Colors.black,
                                ),
                                iconSize: 40,
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'USER PROFILE',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              child: IconButton(
                                icon: IconShadowWidget(
                                  Icon(
                                    MdiIcons.headFlash,
                                    color: Colors.red[900],
                                    size: 40,
                                  ),
                                  shadowColor: Colors.black,
                                ),
                                iconSize: 40,
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'LEAD ADMIN',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              child: IconButton(
                                icon: IconShadowWidget(
                                  Icon(
                                    MdiIcons.clipboardText,
                                    color: Colors.red[900],
                                    size: 40,
                                  ),
                                  shadowColor: Colors.black,
                                ),
                                iconSize: 40,
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'RULES',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              child: IconButton(
                                icon: IconShadowWidget(
                                  Icon(
                                    MdiIcons.bookInformationVariant,
                                    size: 40,
                                    color: Colors.red[900],
                                  ),
                                  shadowColor: Colors.black,
                                ),
                                iconSize: 40,
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'REPORTS',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(blurRadius: 20.0, color: Colors.black),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text(
                        "NOTIFICATIONS",
                        style: TextStyle(fontSize: 15),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "TODAY",
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[600]),
                              ),
                              onPressed: () {},
                            ),
                            Text('|'),
                            FlatButton(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "PREVIOUS",
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[600]),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            " 9:00",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 80,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red[900],
                              boxShadow: [BoxShadow(blurRadius: 15.0)]),
                          child: ListTile(
                            title: Text(
                              "TRIP ID: 7177225\n\n\n",
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 9),
                            ),
                            subtitle: Text(
                              "Customer is viewing the quote.",
                              style: TextStyle(
                                  color: Colors.grey[300], fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            " 8:50",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 80,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red[900],
                              boxShadow: [BoxShadow(blurRadius: 15.0)]),
                          child: ListTile(
                            title: Text(
                              "TRIP ID: 7177225\n\n\n",
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 9),
                            ),
                            subtitle: Text(
                              "Follow up has been done 24 Hours\nearlier.",
                              style: TextStyle(
                                  color: Colors.grey[300], fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            " 7:46",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 80,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red[900],
                              boxShadow: [BoxShadow(blurRadius: 15.0)]),
                          child: ListTile(
                            title: Text(
                              "TRIP ID: 7177225\n\n\n",
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 9),
                            ),
                            subtitle: Text(
                              "Customer had commented on quote.",
                              style: TextStyle(
                                  color: Colors.grey[300], fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
