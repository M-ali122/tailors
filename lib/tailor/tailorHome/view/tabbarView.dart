import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../res/tailorSvg/tailor.dart';

class TabbarView extends GetWidget{

  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3, // Tab ka count
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: (){},
              icon: SvgPicture.string(Svgs.dashboard)
          ),
          title: const Text(
              'Order',
            style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Active'),
              Tab(text: 'Past'),
              Tab(text: 'Complete'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Content for Tab 1')),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
          ],
        ),
      ),
    );

  }
}