class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get lottie => toLotti('lottie');
  String get lottieDark => toLotti('lottieDark');

  String toPng(String name) => 'assets/images/png/$name.png';
  String toLotti(String name) => 'assets/images/lottie/$name.json';
}
