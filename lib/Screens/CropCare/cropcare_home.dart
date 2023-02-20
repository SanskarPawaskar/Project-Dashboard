import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CropCare extends StatefulWidget {
  const CropCare({Key? key}) : super(key: key);

  @override
  State<CropCare> createState() => _CropCareState();
}

class _CropCareState extends State<CropCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Crop Care')),
    );
  }
}
