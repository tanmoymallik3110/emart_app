import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/home_screen/components/fetured_buttons.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: const TextStyle(color: textfieldGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                        width: 0, 
                        style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
              
                    10.heightBox,
                    //swiper
              
                        VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: slidersList.length, 
                      itemBuilder: (context, index) {
                        return Image.asset(
                            slidersList[index], 
                            fit: BoxFit.fill,
                          ).box.rounded
                          .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                      }
                    ),
              
              
                    10.heightBox,
                    //deals buttons
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        2, (index) => homeButtons(
                          height: context.screenHeight*0.15,
                          width: context.screenWidth/2.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todaysDeal : flashSale,
                        ),
                      ),
                    ),
              
                    10.heightBox,
                    //2nd swiper
              
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSliderslidersList.length, 
                      itemBuilder: (context, index) {
                        return Image.asset(
                            secondSliderslidersList[index], 
                            fit: BoxFit.fill,
                          ).box.rounded
                          .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                      }
                    ),
              
              
                    10.heightBox,
                    //category buttons
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3, (index) => homeButtons(
                          height: context.screenHeight*0.15,
                          width: context.screenWidth/3.5,
                          icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icFlashDeal,
                          title: index == 0 ? topCategories : index == 1 ? brands : flashSale,
                        ),
                      ),
                    ),
              
              
                    20.heightBox,
                    //featured categories
              
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text.fontFamily(semibold)
                        .size(20).color(darkFontGrey).make(),
                    ),

                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3, (index) => Column(
                            children: [
                              featuredButton(
                                title: featuredTitle1[index], 
                                icon: featuredImages1[index],
                              ),
                              10.heightBox,
                              featuredButton(
                                title: featuredTitle2[index], 
                                icon: featuredImages2[index],
                              ),
                            ],
                          ),
                        ).toList(),
                      ),
                    ),


                    //featured product
                    20.heightBox,

                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.white.size(18).fontFamily(bold).make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                featuredSliderImg.length, (index) =>
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(featuredSliderImg[index], width: 150, fit: BoxFit.cover),
                                    10.heightBox,
                                    featuredSliderTitle[index].text
                                    .fontFamily(semibold).color(darkFontGrey).make(),
                                    10.heightBox,
                                    featuredItemPrice[index].text
                                    .color(redColor).fontFamily(bold).size(16).make(),
                                    10.heightBox,
                                  ],
                                ).box.white
                                .roundedSM
                                .margin(const EdgeInsets.symmetric(horizontal: 4))
                                .padding(const EdgeInsets.all(8)).make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    20.heightBox,
                    //third swipper

                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 110,
                      enlargeCenterPage: true,
                      itemCount: thirdSliderslidersList.length, 
                      itemBuilder: (context, index) {
                        return Image.asset(
                            thirdSliderslidersList[index], 
                            fit: BoxFit.fill,
                          ).box.rounded
                          .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                      }
                    ),


                    //all products section
                    20.heightBox,
                    
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        mainAxisExtent: 300, 
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ), 
                      itemBuilder: (context, index) {
                        return  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(allProductImg[index], width: 200, height: 200, fit: BoxFit.cover),
                            const Spacer(),
                            allProductTitle[index].text
                            .fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            allProductPrice[index].text
                            .color(redColor).fontFamily(bold).size(16).make(),
                            10.heightBox,
                          ],
                        ).box.white
                        .roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4))
                        .padding(const EdgeInsets.all(12)).make();
                      },
                    ), 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

