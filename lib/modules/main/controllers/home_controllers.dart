import 'dart:developer';

import 'package:get/get.dart';

import '../../../constants/api_endpoint.dart';
import '../../../services/network_service.dart';
import '../../../services/response_call.dart';
import '../models/berita_model.dart';

class HomeControllers extends GetxController {
  Rx<ResponseCall> apiCall = ResponseCall.loading('loading').obs;
  Rx<ResponseCall> apiDetailCall = ResponseCall.loading('loading').obs;

  bool isLoadedBefore = false;

  Berita? berita;
  RxList<Berita> listBerita = <Berita>[].obs;

  Future<void> getListBerita() async {
    apiCall(ResponseCall.loading('loading'));

    try {
      final response = await NetworkService.get(ApiEndpoint.getBerita, null);

      if (response['meta']['status']) {
        listBerita.clear();
        final result = BeritaModel.fromJson(response);
        listBerita.addAll(result.response.data);
        listBerita.sort((a, b) => b.createdAt.compareTo(a.createdAt));

        isLoadedBefore = true;
        apiCall(ResponseCall.completed('success'));
      } else {
        apiCall(ResponseCall.error(response['response']['message'].toString()));
      }
    } catch (e) {
      log('ERROR GET LIST BERITA: ${e.toString()}');
      apiCall(ResponseCall.error(e.toString()));
    }
  }
}
