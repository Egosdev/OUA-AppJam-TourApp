import 'package:appjam/widgets/app_bar/custom_app_bar.dart';
import 'package:appjam/widgets/app_bar/appbar_leading_image.dart';
import 'package:appjam/widgets/app_bar/appbar_title.dart';
import 'package:appjam/widgets/custom_search_view.dart';
import 'widgets/newtourspage_item_widget.dart';
import 'models/newtourspage_item_model.dart';
import 'models/newtours_page_model.dart';
import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';
import 'bloc/newtours_page_bloc.dart';
import '../sidebar.dart';

class NewtoursPageScreen extends StatelessWidget {
  const NewtoursPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NewtoursPageBloc>(
      create: (context) => NewtoursPageBloc(NewtoursPageState(
        newtoursPageModelObj: NewtoursPageModel(),
      ))
        ..add(NewtoursPageInitialEvent()),
      child: NewtoursPageScreen(),
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
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              BlocSelector<NewtoursPageBloc, NewtoursPageState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_ke_fetmek_i_in_bir".tr,
                  );
                },
              ),
              SizedBox(height: 24.v),
              _buildNewtourspage(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgDiscoverIcon,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_yeni_turlar_ke_fet".tr,
        margin: EdgeInsets.only(left: 5.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewtourspage(BuildContext context) {
    return Expanded(
      child:
          BlocSelector<NewtoursPageBloc, NewtoursPageState, NewtoursPageModel?>(
        selector: (state) => state.newtoursPageModelObj,
        builder: (context, newtoursPageModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
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
            itemCount: newtoursPageModelObj?.newtourspageItemList.length ?? 0,
            itemBuilder: (context, index) {
              NewtourspageItemModel model =
                  newtoursPageModelObj?.newtourspageItemList[index] ??
                      NewtourspageItemModel();
              return NewtourspageItemWidget(
                model,
                changeSwitch: (value) {
                  context.read<NewtoursPageBloc>().add(NewtourspageItemEvent(
                      index: index, isSelectedSwitch: value!));
                },
              );
            },
          );
        },
      ),
    );
  }
}
