import 'package:flutter/material.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/sizes.dart';
import 'package:screen_navigation/core/utils/textStyle.dart';
import 'package:screen_navigation/data/dummy_data.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.grayOne,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: UIColors.white,
        title: Text("Title",style: StyleText.mediumDarkGray17,),
        leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
      ),
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
        gridDelegate:
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, mainAxisExtent: 195.0.flexibleWidth,),
        itemBuilder: (BuildContext context, int index) {
          ProductModel data = productList[index];
          return _buildCard(data);
        },
      ),
    );
  }

  _buildCard(ProductModel data){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.0.flexibleWidth,vertical: 5.flexibleHeight),
      child: Card(


        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.name!,style: StyleText.boldDarkGrey17,),
              5.verticalSpace,
              Text(data.subtitle!,style: StyleText.regularDarkGray15,),
              5.verticalSpace,
              Text(data.time!,style: StyleText.regularDarkGray15,),
              3.verticalSpace,
              Text(data.description!,style: StyleText.regularDarkGray15,),


              10.verticalSpace,
              Center(
                child: Container(
                  height: 50.flexibleHeight,
                  width: 50.flexibleWidth,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: data.isDone!? UIColors.greenColor : UIColors.mediumGray,width: 2)
                  ),
                  child: data.isDone! ? const Icon(Icons.done,size: 32,color: UIColors.greenColor,) : Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
