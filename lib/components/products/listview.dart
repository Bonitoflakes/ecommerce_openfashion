// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_openfashion/globals/colors.dart';
import 'package:ecommerce_openfashion/globals/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum ClothingSize {
  S,
  M,
  L;
}

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  // ClothingSize? _clothingSize;
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    toggleLike() => {
          setState(() {
            _isLiked = !_isLiked;
          })
        };

    return Container(
      padding: EdgeInsets.only(top: 27, left: 16, right: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              'assets/images/img_rectangle344_220x165.png',
              fit: BoxFit.cover,
              // width: 100,
              height: 133,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 7,
                left: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'lammer'.toUpperCase(),
                    style: AppTextStyles.subTitleS
                        .copyWith(color: AppColor.titleColor),
                  ),
                  Text(
                    'Recycle Boucle Knit Cardigan Pink',
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.bodyM
                        .copyWith(color: AppColor.labelColor),
                  ),
                  Text(
                    '\$120'.toUpperCase(),
                    style: AppTextStyles.price
                        .copyWith(color: AppColor.secondaryColor),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: SvgPicture.asset(
                          'assets/images/Star.svg',
                          height: 16,
                          width: 16,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '4.8 Ratings',
                        style: AppTextStyles.bodyS
                            .copyWith(color: AppColor.labelColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(children: [
                          Text(
                            'Size',
                            style: AppTextStyles.bodyS
                                .copyWith(color: AppColor.labelColor),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            alignment: Alignment(0, -0.5),
                            constraints:
                                BoxConstraints(minHeight: 24, minWidth: 24),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(222, 222, 222, 222),
                                  width: 1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              'S',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            alignment: Alignment(0, -0.5),
                            constraints:
                                BoxConstraints(minHeight: 24, minWidth: 24),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(222, 222, 222, 222),
                                  width: 1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              'M',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            alignment: Alignment(0, -0.5),
                            constraints:
                                BoxConstraints(minHeight: 24, minWidth: 24),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(222, 222, 222, 222),
                                  width: 1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              'L',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ]),
                      ),
                      GestureDetector(
                        onTap: toggleLike,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: SvgPicture.asset(
                              'assets/images/Heart.svg',
                              colorFilter: _isLiked
                                  ? ColorFilter.mode(
                                      AppColor.secondaryColor, BlendMode.srcIn)
                                  : ColorFilter.mode(
                                      AppColor.lineColor, BlendMode.srcIn),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
