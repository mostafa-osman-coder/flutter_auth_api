import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  // ignore: use_super_parameters
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.3,
      child: Image.asset('assets/images/friendship.png'),
    );
  }
}
