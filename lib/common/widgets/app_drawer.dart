
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/sizes.dart';
import 'package:screen_navigation/core/utils/textStyle.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
           Container(
            width: 374.flexibleWidth,
            height: 146.flexibleHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 9.flexibleWidth, top: 60.flexibleHeight),
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: 'https://i.imgur.com/zLCYdR9.jpg',
                        imageBuilder: (context, imageProvider) => Container(
                          width: 78.flexibleWidth,
                          height: 78.flexibleHeight,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      10.horizontalSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: StyleText.boldDarkGrey30,
                              overflow: TextOverflow.ellipsis,
                            ),
                            5.verticalSpace,
                            Text(
                              'jhon@gmail.com',
                              style: StyleText.regularDarkGray13,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          10.verticalSpace,
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: UIColors.mediumGray,
            ),
          ),
          25.verticalSpace,
          ListTile(
            horizontalTitleGap: 0,
            leading: const Icon(
              Icons.home,
              size: 28,
              color: UIColors.primaryColor,
            ),
            title: Text(
              'Home',
              style: StyleText.regularDarkGrey20,
            ),
            onTap: () {

            },
          ),
          ListTile(
            horizontalTitleGap: 0,
             leading: const Icon(
            Icons.card_travel_sharp,
            size: 28,
               color: UIColors.primaryColor,
            ),
            title: Text(
              'My orders',
              style: StyleText.regularDarkGrey20,
            ),
            onTap: () {
              // Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            horizontalTitleGap: 0,
            leading: const Icon(
              Icons.settings,
              size: 28,
              color: UIColors.primaryColor,
            ),
            title: Text(
              'Settings',
              style: StyleText.regularDarkGrey20,
            ),
            onTap: () {

            },
          ),

          ListTile(
            horizontalTitleGap: 0,
          leading: const Icon(
            Icons.logout,
            size: 28,
            color: UIColors.primaryColor,
            ),
            title: Text(
              'Logout',
              style: StyleText.regularDarkGrey20,
              textAlign: TextAlign.start,
            ),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}
