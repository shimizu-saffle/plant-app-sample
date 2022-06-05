import 'package:flutter/material.dart';

import 'featured_plants.dart';
import 'header_with_search_box.dart';
import 'recommends_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWithSearchBox(),
          TitleWithMoreButton(title: 'Recommended', onPressed: () {}),
          const RecommendsPlants(),
          TitleWithMoreButton(title: 'Featured Plants', onPressed: () {}),
          const FeaturedPlants(),
        ],
      ),
    );
  }
}
