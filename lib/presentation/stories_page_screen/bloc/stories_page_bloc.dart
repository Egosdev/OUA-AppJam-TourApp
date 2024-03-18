import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/storiespage_item_model.dart';
import 'package:appjam/presentation/stories_page_screen/models/stories_page_model.dart';
part 'stories_page_event.dart';
part 'stories_page_state.dart';

/// A bloc that manages the state of a StoriesPage according to the event that is dispatched to it.
class StoriesPageBloc extends Bloc<StoriesPageEvent, StoriesPageState> {
  StoriesPageBloc(StoriesPageState initialState) : super(initialState) {
    on<StoriesPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StoriesPageInitialEvent event,
    Emitter<StoriesPageState> emit,
  ) async {
    emit(state.copyWith(
        storiesPageModelObj: state.storiesPageModelObj?.copyWith(
      storiespageItemList: fillStoriespageItemList(),
    )));
  }

  List<StoriespageItemModel> fillStoriespageItemList() {
    return [
      StoriespageItemModel(
          gapRYasTuru: "Gap Rüyası Turu",
          ankaraHareketli: "(Ankara Hareketli)",
          gapRyasTuru1: ImageConstant.imgPhoneRinging,
          mart: "18 Mart 2024",
          elevenMillionTwoThousand: "11:00 - 20:00",
          mart1: ImageConstant.imgStar24),
      StoriespageItemModel(
          gapRYasTuru: "Klasik Gap Turu",
          ankaraHareketli: "(Ankara Hareketli)",
          mart1: ImageConstant.imgStar25)
    ];
  }
}
