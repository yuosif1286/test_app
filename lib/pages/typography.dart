

import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';
import 'package:sales_uikit/Constants/s_typography.dart';
class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       appBar:SAppBar(title: 'typography',showBackButton: true,),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('H1:'),
                Spacer(),
                Text('typography',style: STypography.h1,)
              ],
            ),
            Row(
              children: [
                Text('H2:'),
                Spacer(),
                Text('typography',style: STypography.h2,)
              ],
            ),
            Row(
              children: [
                Text('H3:'),
                Spacer(),
                Text('typography',style: STypography.h3,)
              ],
            ),
            Row(
              children: [
                Text('H4:'),
                Spacer(),
                Text('typography',style: STypography.h4,)
              ],
            ),
            Row(
              children: [
                Text('H5:'),
                Spacer(),
                Text('typography',style: STypography.h5,)
              ],
            ),
            Row(
              children: [
                Text('H6:'),
                Spacer(),
                Text('typography',style: STypography.h6,)
              ],
            ),
            Row(
              children: [
                Text('subtitle1:'),
                Spacer(),
                Text('typography',style: STypography.subtitle1,)
              ],
            ),
            Row(
              children: [
                Text('subtitle2:'),
                Spacer(),
                Text('typography',style: STypography.subtitle2,)
              ],
            ),
            Row(
              children: [
                Text('body1:'),
                Spacer(),
                Text('typography',style: STypography.body1,)
              ],
            ),
            Row(
              children: [
                Text('body2:'),
                Spacer(),
                Text('typography',style: STypography.body2,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}