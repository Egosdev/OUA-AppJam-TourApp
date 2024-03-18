import '../models/pasttourspage_item_model.dart';
import 'package:appjam/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';

// ignore: must_be_immutable
class PasttourspageItemWidget extends StatelessWidget {
  PasttourspageItemWidget(
    this.pasttourspageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PasttourspageItemModel pasttourspageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineIndigo4000a.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPhoneRinging51x51,
                  height: 51.adaptSize,
                  width: 51.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 9.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pasttourspageItemModelObj.gapRYasTuru!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        pasttourspageItemModelObj.yenidenAramakIIn!,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 48.v,
                  width: 54.h,
                  margin: EdgeInsets.only(left: 18.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          CustomElevatedButton(
            text: "msg_21_saat_nce_telefon".tr,
            buttonStyle: CustomButtonStyles.fillRedA,
            buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
