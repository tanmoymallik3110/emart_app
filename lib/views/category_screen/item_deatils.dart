import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/consts.dart';

class ItemDetails extends StatelessWidget {

  final String? title;

  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.share,
            ),
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    //swiper 

                    VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3, 
                      itemBuilder: (index, context) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),


                    //titles and detailes sections
                    10.heightBox,

                    title!.text.color(darkFontGrey).size(16).fontFamily(semibold).make(),


                    //rating
                    10.heightBox,

                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      size: 25,
                      stepInt: true,
                      count: 5,
                    ),

                    //price
                    10.heightBox,

                    "\$300.00".text.fontFamily(bold).color(redColor).size(18).make(),

                    //chat section
                    10.heightBox,

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.white.fontFamily(semibold).make(),
                              2.heightBox,
                              "In House Product".text.color(darkFontGrey).size(16)
                              .fontFamily(semibold).make(),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.message_rounded, color: darkFontGrey, size: 20,),
                        ),
                      ],
                    ).box.padding(const EdgeInsets.symmetric(horizontal: 16))
                    .color(textfieldGrey).height(70).make(),


                    //color section
                    20.heightBox,

                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                3, (index) => VxBox().size(40, 40)
                                .margin(const EdgeInsets.symmetric(horizontal: 4))
                                .color(Vx.randomPrimaryColor).roundedFull.make(),
                              ),
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),


                        //quantity row
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quantity: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                             children: [
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.remove),
                              ),
                              "0".text.fontFamily(bold).color(darkFontGrey).make(),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.add),
                              ),
                              10.widthBox,
                              "(0 available)".text.color(textfieldGrey).make(),
                             ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),


                        //total
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total: ".text.color(textfieldGrey).make(),
                            ),
                            "\$0.00".text.color(redColor).fontFamily(bold).size(16).make(),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                      ],
                    ).box.shadowSm.white.make(),


                    //description section
                    10.heightBox,

                    "Description: ".text.color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                    "This is a dummy description...".text.color(darkFontGrey).make(),


                    //list
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                        itemDetailsButtonList.length, (index) => ListTile(
                          title: itemDetailsButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ).box.make(),
                      ),
                    ),


                    //products may like
                    20.heightBox,

                    productsyoumaylike.text.color(darkFontGrey).size(16).fontFamily(bold).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          6, (index) => 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                              10.heightBox,
                              "Laptop 4/64GB".text
                              .fontFamily(semibold).color(darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text
                              .color(redColor).fontFamily(bold).size(16).make(),
                              10.heightBox,
                            ],
                          ).box.white
                          .roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4))
                          .padding(const EdgeInsets.all(8)).make(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          //buttons


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 170,
                height: 50,
                child: ourButton(
                  onPress: () {},
                  title: "Add to cart",
                  textColor: whiteColor,
                  color: redColor,
                ),
              ),
              SizedBox(
                width: 170,
                height: 50,
                child: ourButton(
                  onPress: () {},
                  title: "Buy Now",
                  textColor: whiteColor,
                  color: golden,
                ),
              ),
            ],
          ).box.margin(const EdgeInsets.all(10)).make(),
        ],
      ),
    );
  }
}

