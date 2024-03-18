import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pasttourspage_item_model.dart';
import 'package:appjam/presentation/pasttours_page_screen/models/pasttours_page_model.dart';
part 'pasttours_page_event.dart';
part 'pasttours_page_state.dart';

/// A bloc that manages the state of a PasttoursPage according to the event that is dispatched to it.
class PasttoursPageBloc extends Bloc<PasttoursPageEvent, PasttoursPageState> {
  PasttoursPageBloc(PasttoursPageState initialState) : super(initialState) {
    on<PasttoursPageInitialEvent>(_onInitialize);
  }

  List<PasttourspageItemModel> fillPasttourspageItemList() {
    return [
      PasttourspageItemModel(
          gapRYasTuru: "Gap Rüyası Turu",
          yenidenAramakIIn: "Yeniden aramak için tıklayınız"),
      PasttourspageItemModel(
          gapRYasTuru: "Gap Rüyası Turu",
          yenidenAramakIIn: "Yeniden aramak için tıklayınız")
    ];
  }

  _onInitialize(
    PasttoursPageInitialEvent event,
    Emitter<PasttoursPageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        pasttoursPageModelObj: state.pasttoursPageModelObj?.copyWith(
      pasttourspageItemList: fillPasttourspageItemList(),
    )));
  }
}
