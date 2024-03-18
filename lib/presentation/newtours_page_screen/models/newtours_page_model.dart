// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'newtourspage_item_model.dart';

/// This class defines the variables used in the [newtours_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewtoursPageModel extends Equatable {
  NewtoursPageModel({this.newtourspageItemList = const []}) {}

  List<NewtourspageItemModel> newtourspageItemList;

  NewtoursPageModel copyWith(
      {List<NewtourspageItemModel>? newtourspageItemList}) {
    return NewtoursPageModel(
      newtourspageItemList: newtourspageItemList ?? this.newtourspageItemList,
    );
  }

  @override
  List<Object?> get props => [newtourspageItemList];
}
