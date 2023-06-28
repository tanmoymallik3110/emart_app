import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/category_screen/item_deatils.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategotyDetails extends StatelessWidget {

  final String? title;

  const CategotyDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: title!.text.white.fontFamily(bold).make(),
        ),


        //header slider
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6, (index) => "Baby Clothings".text.color(darkFontGrey)
                    .fontFamily(semibold).size(13).makeCentered()
                    .box.white.margin(const EdgeInsets.symmetric(horizontal: 4))
                    .size(120, 60).rounded.make()),
                ),
              ),


              //items container
              20.heightBox,

              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ), 
                  itemBuilder: (index, context) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5, width: 200, height: 150, fit: BoxFit.cover),
                          "Laptop 4/64GB".text
                          .fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text
                          .color(redColor).fontFamily(bold).size(16).make(),
                          10.heightBox,
                        ],
                      ).box.white
                      .roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4))
                    .outerShadowSm
                    .padding(const EdgeInsets.all(12)).make().onTap(() {
                      Get.to(() => ItemDetails(title: "Dummy title"));
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

