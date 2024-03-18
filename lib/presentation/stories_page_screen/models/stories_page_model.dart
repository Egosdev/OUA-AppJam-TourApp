// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'storiespage_item_model.dart';

/// This class defines the variables used in the [stories_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesPageModel extends Equatable {
  StoriesPageModel({this.storiespageItemList = const []}) {}

  List<StoriespageItemModel> storiespageItemList;

  StoriesPageModel copyWith({List<StoriespageItemModel>? storiespageItemList}) {
    return StoriesPageModel(
      storiespageItemList: storiespageItemList ?? this.storiespageItemList,
    );
  }

  @override
  List<Object?> get props => [storiespageItemList];
}
