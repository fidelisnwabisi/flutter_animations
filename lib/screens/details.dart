import 'package:flutter/material.dart';
import 'package:flutter_animations/models/Trip.dart';
import 'package:flutter_animations/shared/heart.dart';
import 'package:ipsum/ipsum.dart';

// import 'package:lipsum/lipsum.dart' as lipsum;

class Details extends StatelessWidget {
  final Trip trip;

  Details({required this.trip});

  @override
  Widget build(BuildContext context) {
    // Create an instance
    Ipsum lip = Ipsum();
    String paragraphs = lip.paragraphs(1);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Image.asset(
                'images/${trip.img}',
                height: 360,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )),
              SizedBox(height: 30),
              ListTile(
                  title: Text(trip.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800])),
                  subtitle: Text(
                      '${trip.nights} night stay for only \$${trip.price}',
                      style: TextStyle(letterSpacing: 1)),
                  trailing: Heart()),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      paragraphs,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
