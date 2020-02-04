import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/journey-card.dart';
import 'package:first_flutter_app/models/journey.dart';

class SecondPage extends StatelessWidget {
  List getCardsData() {
    return [
      new Journey('Public Bus', 20, 35),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25),
      new Journey('Public Bus', 30, 25)
    ];
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
                    Icons.arrow_back,
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
                'Emilio to',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              Text(
                'Nandi Hills',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: getCardsData().length,
                  itemBuilder: (context, index) {
                    Journey journey = getCardsData()[index];

                    return JourneyCard(
                      price: journey.price,
                      timeInMin: journey.timeInMin,
                      transportName: journey.transportName,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
