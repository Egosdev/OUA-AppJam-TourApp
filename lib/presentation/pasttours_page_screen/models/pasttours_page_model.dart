// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'pasttourspage_item_model.dart';

/// This class defines the variables used in the [pasttours_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PasttoursPageModel extends Equatable {
  PasttoursPageModel({this.pasttourspageItemList = const []}) {}

  List<PasttourspageItemModel> pasttourspageItemList;

  PasttoursPageModel copyWith(
      {List<PasttourspageItemModel>? pasttourspageItemList}) {
    return PasttoursPageModel(
      pasttourspageItemList:
          pasttourspageItemList ?? this.pasttourspageItemList,
    );
  }

  @override
  List<Object?> get props => [pasttourspageItemList];
}
