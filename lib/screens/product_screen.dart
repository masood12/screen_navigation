import 'package:flutter/material.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/sizes.dart';
import 'package:screen_navigation/core/utils/textStyle.dart';
import 'package:screen_navigation/data/dummy_data.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "product-screen";

  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: UIColors.grayOne,
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        backgroundColor: UIColors.white,
        title: Text(
          arguments,
          style: StyleText.mediumDarkGray18,
        ),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      bottomSheet: _buildFooter(),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 13.flexibleWidth, vertical: 10.flexibleHeight),
      child: GridView.builder(
        itemCount: productList.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 195.0.flexibleWidth,
        ),
        itemBuilder: (BuildContext context, int index) {
          ProductModel data = productList[index];
          return _buildCard(data);
        },
      ),
    );
  }

  _buildFooter() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
              )),
          height: 60.flexibleHeight,
          width: double.infinity,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreen,
            ),
            width: 60.flexibleWidth,
            height: 60.flexibleHeight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/images/delivery_van.png",
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildCard(ProductModel data) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 5.0.flexibleWidth, vertical: 5.flexibleHeight),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name!,
                style: StyleText.boldDarkGrey17,
              ),
              5.verticalSpace,
              Text(
                data.subtitle!,
                style: StyleText.regularDarkGray15,
              ),
              5.verticalSpace,
              Text(
                data.time!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: StyleText.regularDarkGray15,
              ),
              3.verticalSpace,
              Text(
                data.description!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: StyleText.regularDarkGray15,
              ),
              10.verticalSpace,
              Center(
                child: Container(
                  height: 50.flexibleHeight,
                  width: 50.flexibleWidth,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: data.isDone!
                              ? UIColors.greenColor
                              : UIColors.mediumGray,
                          width: 3)),
                  child: data.isDone!
                      ? const Icon(
                          Icons.done,
                          size: 32,
                          color: UIColors.greenColor,
                        )
                      : Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
