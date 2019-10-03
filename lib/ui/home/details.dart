import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String id;

  const DetailsScreen({
    Key key,
    @required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: Text('Current ID: $id'),
      ),
    );
  }
}
