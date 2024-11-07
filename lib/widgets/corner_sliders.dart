import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:laba11/models/corner_radius_model.dart';
import 'package:laba11/widgets/slider_row.dart';

class CornerSliders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CornerRadiusModel>(
      builder: (context, model, child) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SliderRow(
                    label: 'TL:',
                    value: model.topLeft,
                    onChanged: (value) => model.setTopLeft(value),
                  ),
                ),
                Expanded(
                  child: SliderRow(
                    label: 'TR',
                    value: model.topRight,
                    onChanged: (value) => model.setTopRight(value),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SliderRow(
                    label: 'BL',
                    value: model.bottomLeft,
                    onChanged: (value) => model.setBottomLeft(value),
                  ),
                ),
                Expanded(
                  child: SliderRow(
                    label: 'BR',
                    value: model.bottomRight,
                    onChanged: (value) => model.setBottomRight(value),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
