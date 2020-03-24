import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:project_thanos/screens/home_page.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData.dark().copyWith(
//         primaryColor: Color(0xFF2B2D5C),
//         scaffoldBackgroundColor: Color(0xFF2B2D5C),
//       ),
//       home: HomePage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _launchCaller(String phoneNumber) async {
    // var url ="whatsapp://send?phone=$phoneNumber";
    var url = "tel:$phoneNumber";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  var listModel = <NameModel>[
    NameModel(name: 'John Doe', phone: '+23234'),
    NameModel(name: 'May Dan', phone: '+8374234'),
    NameModel(name: 'Ike Dave', phone: '+342234'),
    NameModel(name: 'Mary Ruby', phone: '+22934'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                "First Card",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 2,
              child: Container(
                height: 300,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int i) {
                        return Card(
                            child: ListTile(
                          title: Text(listModel[i].name ?? ''),
                          subtitle: InkWell(
                            onTap: () => _launchCaller(listModel[i].phone),
                            child: Text(listModel[i].phone ?? ''),
                          ),
                        ));
                      },
                      itemCount: listModel.length),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Second Card",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Material(
                elevation: 2,
                child: Container(
                  height: 300,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemBuilder: (BuildContext context, int i) {
                          return Card(
                              child: ListTile(
                            title: Text(listModel[i].name ?? ''),
                            subtitle: Text(listModel[i].phone ?? ''),
                          ));
                        },
                        itemCount: listModel.length),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NameModel {
  final String name;
  final String phone;

  const NameModel({this.name, this.phone});
}
