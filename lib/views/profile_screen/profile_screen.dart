import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: SafeArea(
          child: Column(
            children: [


              //edit profile
              10.heightBox,
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit_square,
                  color: whiteColor,
                ),
              ).onTap(() {}),


              //profile details

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(imgProfile2, width: 90, fit: BoxFit.cover)
                    .box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.white.fontFamily(semibold).make(),
                          "customer@exmple.com".text.white.make(),
                        ],
                      ),
                    ),
              
              
                    //logout button
              
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      onPressed: () {}, 
                      child: logout.text.white.make(),
                    ),
                  ],
                ),
              ),

              
              //details card

              20.heightBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth/3.3,
                  ),
                  detailsCard(
                    count: "32",
                    title: "in your wishlist",
                    width: context.screenWidth/3.3,
                  ),
                  detailsCard(
                    count: "00",
                    title: "your orders",
                    width: context.screenWidth/3.3,
                  ),
                ],
              ),


              //butons sections
              40.heightBox,

              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: darkFontGrey,
                  );
                }, 
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(profileButtonsIcon[index], width: 22),
                    title: profileButtonsList[index].text.color(darkFontGrey).fontFamily(semibold).make(),
                  );
                }, 
              ).box.white.rounded.shadowSm
              .padding(const EdgeInsets.symmetric(horizontal: 16))
            .margin(const EdgeInsets.all(8)).make().box.color(redColor).make(),
            ],
          ),
        ),
      ),
    );
  }
}

