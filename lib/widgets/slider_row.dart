import 'package:flutter/material.dart';

class SliderRow extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  SliderRow({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
      children: [
        Text(label, style: TextStyle(fontSize: 10),),
        Expanded(
          child: Slider(
            value: value,
            min: 0,
            max: 90,
            onChanged: onChanged,
          ),
        ),
        Text(value.toStringAsFixed(2), style: TextStyle(fontSize: 10),),
      ],
    ));
  }
}
