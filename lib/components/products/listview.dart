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
      margin: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // width: 100,
                height: 185,
                child: Image.asset(
                  'assets/images/Frame.png',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 7, left: 12, right: 12),
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
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
                        style: AppTextStyles.bodyM
                            .copyWith(color: AppColor.labelColor),
                      ),
                      Text(
                        '\$120'.toUpperCase(),
                        style: AppTextStyles.price
                            .copyWith(color: AppColor.primaryColor),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/Star.svg', width: 24),
                          Text(
                            '4.8 Ratings',
                            style: AppTextStyles.bodyM
                                .copyWith(color: AppColor.labelColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text(
                              'Size',
                              style: AppTextStyles.bodyS
                                  .copyWith(color: AppColor.labelColor),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              alignment: Alignment(0, -1),
                              constraints:
                                  BoxConstraints(minHeight: 30, minWidth: 30),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.placeholderColor, width: 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('S'),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              alignment: Alignment(0, -1),
                              constraints:
                                  BoxConstraints(minHeight: 30, minWidth: 30),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.placeholderColor, width: 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('M'),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              alignment: Alignment(0, -1),
                              constraints:
                                  BoxConstraints(minHeight: 30, minWidth: 30),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.placeholderColor, width: 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('L'),
                            ),
                          ]),
                          GestureDetector(
                            onTap: toggleLike,
                            child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: SvgPicture.asset(
                                  'assets/images/Heart.svg',
                                  colorFilter: _isLiked
                                      ? ColorFilter.mode(
                                          AppColor.secondaryColor,
                                          BlendMode.srcIn)
                                      : null,
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
        ],
      ),
    );
  }
}
