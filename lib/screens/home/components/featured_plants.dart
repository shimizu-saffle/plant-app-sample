import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
            onTap: () {},
          ),
          _FeaturePlantCard(
            image: 'assets/images/bottom_img_2.png',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _FeaturePlantCard extends StatelessWidget {
  const _FeaturePlantCard({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: screenSize.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
