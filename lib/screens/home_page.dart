import 'package:flutter/material.dart';
import 'package:project_thanos/utilities/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Thanos'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          children: <Widget>[
            Text(
              'Create Account ',
              style: kTextStyle,
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'EMAIL',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  color: Color(0xFF23234F),
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 13.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'PASSWORD',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  color: Color(0xFF23234F),
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 13.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print('tapped');
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFF2F3163),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
