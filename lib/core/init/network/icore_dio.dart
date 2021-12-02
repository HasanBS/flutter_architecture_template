import '../../base/model/ibase_model.dart';
import '../../constants/enum/http_request_enum.dart';
import 'iresponse_model.dart';

abstract class ICoreDio {
  Future<IResponseModel<R>> send<R, T extends IBaseModel>(String path,
      {required HttpTypes type,
      required T parseModel,
      dynamic data,
      Map<String, Object>? queryParameters,
      void Function(int, int)? onReceiveProgress});
}
