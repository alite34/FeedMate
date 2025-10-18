// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bowl.png
  AssetGenImage get bowl => const AssetGenImage('assets/icons/bowl.png');

  /// File path: assets/icons/food.png
  AssetGenImage get food => const AssetGenImage('assets/icons/food.png');

  /// File path: assets/icons/food2.png
  AssetGenImage get food2 => const AssetGenImage('assets/icons/food2.png');

  /// File path: assets/icons/outside.png
  AssetGenImage get outside => const AssetGenImage('assets/icons/outside.png');

  /// File path: assets/icons/paw.png
  AssetGenImage get paw => const AssetGenImage('assets/icons/paw.png');

  /// File path: assets/icons/paw2.png
  AssetGenImage get paw2 => const AssetGenImage('assets/icons/paw2.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/vaccine.png
  AssetGenImage get vaccine => const AssetGenImage('assets/icons/vaccine.png');

  /// File path: assets/icons/vaccine2.png
  AssetGenImage get vaccine2 =>
      const AssetGenImage('assets/icons/vaccine2.png');

  /// File path: assets/icons/vaccine3.png
  AssetGenImage get vaccine3 =>
      const AssetGenImage('assets/icons/vaccine3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bowl,
    food,
    food2,
    outside,
    paw,
    paw2,
    profile,
    vaccine,
    vaccine2,
    vaccine3,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.jpg
  AssetGenImage get a1 => const AssetGenImage('assets/images/1.jpg');

  /// File path: assets/images/2.png
  AssetGenImage get a2 => const AssetGenImage('assets/images/2.png');

  /// File path: assets/images/3.jpg
  AssetGenImage get a3 => const AssetGenImage('assets/images/3.jpg');

  /// File path: assets/images/4.jpg
  AssetGenImage get a4 => const AssetGenImage('assets/images/4.jpg');

  /// File path: assets/images/5.jpg
  AssetGenImage get a5 => const AssetGenImage('assets/images/5.jpg');

  /// File path: assets/images/6.jpg
  AssetGenImage get a6 => const AssetGenImage('assets/images/6.jpg');

  /// File path: assets/images/aaa
  String get aaa => 'assets/images/aaa';

  /// List of all assets
  List<dynamic> get values => [a1, a2, a3, a4, a5, a6, aaa];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
