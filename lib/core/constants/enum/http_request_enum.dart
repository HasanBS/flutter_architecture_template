enum HttpTypes { GET }

extension HttpTypesEnumString on HttpTypes {
  String get stringValue {
    switch (this) {
      case HttpTypes.GET:
        return 'GET';
      default:
        throw Exception('HTTP Routes Not Found');
    }
  }
}
