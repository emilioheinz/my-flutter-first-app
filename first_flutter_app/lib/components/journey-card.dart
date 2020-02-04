import 'package:flutter/material.dart';

class JourneyCard extends StatelessWidget {
  final String transportName;
  final int timeInMin;
  final int price;

  JourneyCard(
      {@required this.transportName,
      @required this.timeInMin,
      @required this.price})
      : assert(transportName != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: new EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color.fromRGBO(191, 207, 220, 1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.transportName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5),
                  ),
                  Text(
                    '${this.timeInMin.toString()} min journey',
                    style: TextStyle(fontSize: 16, letterSpacing: 1.5),
                  )
                ],
              ),
              Spacer(),
              Text(
                'R\$ ${this.price.toString()}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
