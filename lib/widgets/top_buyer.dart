import 'package:flutter/material.dart';

import 'custom_text.dart';

class TopBuyerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return      ListTile(
      leading:   CircleAvatar(
        backgroundImage: AssetImage('images/profile.jpg'),
      ),
      title: Text('Mario Smith'),
      subtitle: Text('33, orders'),
      trailing: CustomText(text: '\$ 1,203', color: Colors.green.shade800, weight: FontWeight.bold,),
    );
  }
}
