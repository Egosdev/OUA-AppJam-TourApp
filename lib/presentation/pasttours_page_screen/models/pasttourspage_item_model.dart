import '../../../core/app_export.dart';

/// This class is used in the [pasttourspage_item_widget] screen.
class PasttourspageItemModel {
  PasttourspageItemModel({
    this.gapRYasTuru,
    this.yenidenAramakIIn,
    this.id,
  }) {
    gapRYasTuru = gapRYasTuru ?? "Gap Rüyası Turu";
    yenidenAramakIIn = yenidenAramakIIn ?? "Yeniden aramak için tıklayınız";
    id = id ?? "";
  }

  String? gapRYasTuru;

  String? yenidenAramakIIn;

  String? id;
}
