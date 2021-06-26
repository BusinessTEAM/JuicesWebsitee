import 'package:flutter/material.dart';

class show extends StatelessWidget {
  const show({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 200,
      height: 200,
      child: Image.network(
          'https://analyticsindiamag.com/wp-content/uploads/2020/10/7d744a684fe03ebc7e8de545f97739dd.jpg'),
    );
  }
}
