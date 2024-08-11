import '../../../../../common/util/local_json.dart';
import '../tab/vo/vo_simple_stock.dart';
import 'package:get/get.dart';

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', '카카오', '네이버', '삼성바이오로직스', '셀트리온']);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async{
    final jsonList = await LocalJson.getObjectList<SimpleStock>("json/stock_list.json");
    stocks.addAll(jsonList);
  }
}