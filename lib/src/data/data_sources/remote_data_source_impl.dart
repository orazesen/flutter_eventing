import 'dart:convert';

import 'package:eventing/src/data/models/event/event_model.dart';
import 'package:eventing/src/domain/data_sources/i_remote_data_source.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IRemoteDataSource)
class RemoteDataSourceImpl implements IRemoteDataSource {
  @override
  Future<List<EventModel>> getEvents() async {
    try {
      String data = await rootBundle.loadString('assets/data/data.json');
      final jsonResult = jsonDecode(data) as List;
      return jsonResult.map((e) => EventModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
