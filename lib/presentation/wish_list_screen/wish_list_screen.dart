import 'package:appjam/widgets/app_bar/custom_app_bar.dart';
import 'package:appjam/widgets/app_bar/appbar_leading_image.dart';
import 'package:appjam/widgets/app_bar/appbar_title.dart';
import 'package:appjam/widgets/custom_search_view.dart';
import 'widgets/wishlist_item_widget.dart';
import 'models/wishlist_item_model.dart';
import 'models/wish_list_model.dart';
import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';
import 'bloc/wish_list_bloc.dart';
import '../sidebar.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WishListBloc>(
      create: (context) => WishListBloc(WishListState(
        wishListModelObj: WishListModel(),
      ))
        ..add(WishListInitialEvent()),
      child: WishListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        drawer: SideBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 1.v,
          ),
          child: Column(
            children: [
              BlocSelector<WishListBloc, WishListState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_listemde_bul".tr,
                  );
                },
              ),
              SizedBox(height: 24.v),
              _buildWishlist(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 55.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgWishlistIcon,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_stek_listem".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildWishlist(BuildContext context) {
    return BlocSelector<WishListBloc, WishListState, WishListModel?>(
      selector: (state) => state.wishListModelObj,
      builder: (context, wishListModelObj) {
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
                  color: appTheme.greenA7007f,
                ),
              ),
            );
          },
          itemCount: wishListModelObj?.wishlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            WishlistItemModel model =
                wishListModelObj?.wishlistItemList[index] ??
                    WishlistItemModel();
            return WishlistItemWidget(
              model,
              changeSwitch: (value) {
                context.read<WishListBloc>().add(
                    WishlistItemEvent(index: index, isSelectedSwitch: value!));
              },
            );
          },
        );
      },
    );
  }
}
