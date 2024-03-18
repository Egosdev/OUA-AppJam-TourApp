import '../models/storiespage_item_model.dart';
import 'package:appjam/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';

// ignore: must_be_immutable
class StoriespageItemWidget extends StatelessWidget {
  StoriespageItemWidget(
    this.storiespageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StoriespageItemModel storiespageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp48x48,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 7.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      storiespageItemModelObj.gapRYasTuru!,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      storiespageItemModelObj.ankaraHareketli!,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: storiespageItemModelObj?.gapRyasTuru1,
                height: 33.v,
                width: 50.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
                margin: EdgeInsets.only(
                  top: 6.v,
                  bottom: 9.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 32.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          storiespageItemModelObj.mart!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 17.h,
                          top: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          storiespageItemModelObj.elevenMillionTwoThousand!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: storiespageItemModelObj?.mart1,
                height: 34.adaptSize,
                width: 34.adaptSize,
                margin: EdgeInsets.only(left: 47.h),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          CustomElevatedButton(
            text: "msg_a_klama_kutucu_u".tr,
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
