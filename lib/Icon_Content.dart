import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const labelTextstyle =  TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label})

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
            label,
            style: labelTextstyle,
        )


      ],
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<IconData>('icon', icon));
  }
}
