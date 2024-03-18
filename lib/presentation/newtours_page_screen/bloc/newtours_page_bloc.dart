import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/newtourspage_item_model.dart';
import 'package:appjam/presentation/newtours_page_screen/models/newtours_page_model.dart';
part 'newtours_page_event.dart';
part 'newtours_page_state.dart';

/// A bloc that manages the state of a NewtoursPage according to the event that is dispatched to it.
class NewtoursPageBloc extends Bloc<NewtoursPageEvent, NewtoursPageState> {
  NewtoursPageBloc(NewtoursPageState initialState) : super(initialState) {
    on<NewtoursPageInitialEvent>(_onInitialize);
    on<NewtourspageItemEvent>(_newtourspageItem);
  }

  _newtourspageItem(
    NewtourspageItemEvent event,
    Emitter<NewtoursPageState> emit,
  ) {
    List<NewtourspageItemModel> newList = List<NewtourspageItemModel>.from(
        state.newtoursPageModelObj!.newtourspageItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelectedSwitch: event.isSelectedSwitch,
    );
    emit(state.copyWith(
        newtoursPageModelObj: state.newtoursPageModelObj
            ?.copyWith(newtourspageItemList: newList)));
  }

  List<NewtourspageItemModel> fillNewtourspageItemList() {
    return [
      NewtourspageItemModel(
          gapRYasTuru: "Gap Rüyası Turu",
          ankaraHareketli: "(Ankara Hareketli)",
          mart: "18 Mart 2024",
          elevenMillionTwoThousand: "11:00 - 20:00",
          mart1: ImageConstant.imgStar2),
      NewtourspageItemModel(
          gapRYasTuru: "Gap Esintisi Turu",
          ankaraHareketli: "(Ankara Hareketli)",
          mart: "18 Mart 2024",
          elevenMillionTwoThousand: "11:00 - 20:00",
          mart1: ImageConstant.imgStar234x34),
      NewtourspageItemModel(
          gapRYasTuru: "Klasik Gap Turu",
          ankaraHareketli: "(Ankara Hareketli)",
          mart: "18 Mart 2024",
          elevenMillionTwoThousand: "11:00 - 20:00",
          mart1: ImageConstant.imgStar21)
    ];
  }

  _onInitialize(
    NewtoursPageInitialEvent event,
    Emitter<NewtoursPageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        newtoursPageModelObj: state.newtoursPageModelObj?.copyWith(
      newtourspageItemList: fillNewtourspageItemList(),
    )));
  }
}
