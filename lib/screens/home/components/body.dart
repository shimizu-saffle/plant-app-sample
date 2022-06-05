import 'package:flutter/material.dart';

import '../../../components/header_with_search_box.dart';
import '../../../components/recommends_plants.dart';
import '../../../components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWithSearchBox(),
          TitleWithMoreButton(title: 'Recommended', onPressed: () {}),
          const RecommendsPlants()
        ],
      ),
    );
  }
}
