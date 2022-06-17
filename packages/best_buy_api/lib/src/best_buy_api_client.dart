import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'exceptions/exceptions.dart';
import 'models/models.dart';

class BestBuyApiClient {
  BestBuyApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  static const _baseUrl =
      String.fromEnvironment('BEST_BUY_BASE_API_URL', defaultValue: '');
  static const _defaultParameters = <String, String>{
    'apiKey': String.fromEnvironment(
      'BEST_BUY_API_KEY',
      defaultValue: '',
    ),
    'format': 'json'
  };

  final http.Client _httpClient;

  Future<ProductsResponse> getPromotedProducts(int page, int pageSize) async {
    final request = Uri.https(
      _baseUrl,
      '/v1/products(onSale=true)',
      {
        ..._defaultParameters,
        'page': '$page',
        'pageSize': '$pageSize',
      },
    );
    final response = await _httpClient.get(request);

    if (response.statusCode != HttpStatus.ok) {
      throw BestBuyApiException('Failed to load products');
    }

    final productsResponseJson = jsonDecode(response.body);

    return ProductsResponse.fromJson(productsResponseJson);
  }
}
