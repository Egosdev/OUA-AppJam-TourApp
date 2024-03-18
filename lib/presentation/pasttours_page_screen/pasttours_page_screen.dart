import 'package:appjam/widgets/app_bar/custom_app_bar.dart';
import 'package:appjam/widgets/app_bar/appbar_leading_image.dart';
import 'package:appjam/widgets/app_bar/appbar_title.dart';
import 'package:appjam/widgets/custom_search_view.dart';
import 'widgets/pasttourspage_item_widget.dart';
import 'models/pasttourspage_item_model.dart';
import 'models/pasttours_page_model.dart';
import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';
import 'bloc/pasttours_page_bloc.dart';
import '../sidebar.dart';

class PasttoursPageScreen extends StatelessWidget {
  const PasttoursPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PasttoursPageBloc>(
      create: (context) => PasttoursPageBloc(PasttoursPageState(
        pasttoursPageModelObj: PasttoursPageModel(),
      ))
        ..add(PasttoursPageInitialEvent()),
      child: PasttoursPageScreen(),
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
              BlocSelector<PasttoursPageBloc, PasttoursPageState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_ge_mi_turlar_mda".tr,
                  );
                },
              ),
              SizedBox(height: 24.v),
              _buildPasttourspage(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCalendar,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_ge_mi_turlar_m".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasttourspage(BuildContext context) {
    return BlocSelector<PasttoursPageBloc, PasttoursPageState,
        PasttoursPageModel?>(
      selector: (state) => state.pasttoursPageModelObj,
      builder: (context, pasttoursPageModelObj) {
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
          itemCount: pasttoursPageModelObj?.pasttourspageItemList.length ?? 0,
          itemBuilder: (context, index) {
            PasttourspageItemModel model =
                pasttoursPageModelObj?.pasttourspageItemList[index] ??
                    PasttourspageItemModel();
            return PasttourspageItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
