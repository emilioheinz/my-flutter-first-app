import 'package:first_flutter_app/pages/second.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  _goToSecondPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  Spacer(),
                  Icon(Icons.swap_vert, size: 40)
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Hey there,',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Where do you want to go today?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Name', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 14,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Last name', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: RaisedButton(
                    onPressed: () => _goToSecondPage(context),
                    color: Color.fromRGBO(78, 78, 78, 1),
                    child: Text(
                      'LOOK FOR COMMUTE',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text('Searching'), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Text('Booking'), icon: Icon(Icons.book)),
          BottomNavigationBarItem(
              title: Text('Account'), icon: Icon(Icons.account_circle))
        ],
      ),
    );
  }
}
