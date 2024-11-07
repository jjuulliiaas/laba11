import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:laba11/models/corner_radius_model.dart';

class RoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CornerRadiusModel>(
      builder: (context, model, child) {
        return Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(model.topLeft),
                topRight: Radius.circular(model.topRight),
                bottomLeft: Radius.circular(model.bottomLeft),
                bottomRight: Radius.circular(model.bottomRight),
              ),
            ),
          ),
        );
      },
    );
  }
}
