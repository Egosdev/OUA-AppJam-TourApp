import 'package:appjam/widgets/app_bar/custom_app_bar.dart';
import 'package:appjam/widgets/app_bar/appbar_leading_image.dart';
import 'package:appjam/widgets/app_bar/appbar_title.dart';
import 'widgets/storiespage_item_widget.dart';
import 'models/storiespage_item_model.dart';
import 'models/stories_page_model.dart';
import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';
import 'bloc/stories_page_bloc.dart';
import '../sidebar.dart';

class StoriesPageScreen extends StatelessWidget {
  const StoriesPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesPageBloc>(
      create: (context) => StoriesPageBloc(StoriesPageState(
        storiesPageModelObj: StoriesPageModel(),
      ))
        ..add(StoriesPageInitialEvent()),
      child: StoriesPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        drawer: SideBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: Column(
            children: [
              _buildStoriesPanel(context),
              SizedBox(height: 31.v),
              _buildStoriespage(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGlasses,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_uygulama_ad".tr,
        margin: EdgeInsets.only(left: 5.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildStoriesPanel(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1,
              height: 75.adaptSize,
              width: 75.adaptSize,
              radius: BorderRadius.circular(
                37.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1,
              height: 75.adaptSize,
              width: 75.adaptSize,
              radius: BorderRadius.circular(
                37.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1,
              height: 75.adaptSize,
              width: 75.adaptSize,
              radius: BorderRadius.circular(
                37.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1,
              height: 75.adaptSize,
              width: 75.adaptSize,
              radius: BorderRadius.circular(
                37.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse5,
              height: 75.v,
              width: 11.h,
              radius: BorderRadius.circular(
                37.h,
              ),
              margin: EdgeInsets.only(left: 10.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStoriespage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 26.h,
      ),
      child: BlocSelector<StoriesPageBloc, StoriesPageState, StoriesPageModel?>(
        selector: (state) => state.storiesPageModelObj,
        builder: (context, storiesPageModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.v),
                child: SizedBox(
                  width: 295.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray100,
                  ),
                ),
              );
            },
            itemCount: storiesPageModelObj?.storiespageItemList.length ?? 0,
            itemBuilder: (context, index) {
              StoriespageItemModel model =
                  storiesPageModelObj?.storiespageItemList[index] ??
                      StoriespageItemModel();
              return StoriespageItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
