/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.png');

  /// File path: assets/images/bottom_navigation_bar.png
  AssetGenImage get bottomNavigationBar =>
      const AssetGenImage('assets/images/bottom_navigation_bar.png');

  /// File path: assets/images/calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('assets/images/calendar.png');

  /// File path: assets/images/calendar_selected.png
  AssetGenImage get calendarSelected =>
      const AssetGenImage('assets/images/calendar_selected.png');

  /// File path: assets/images/chat.png
  AssetGenImage get chat => const AssetGenImage('assets/images/chat.png');

  /// File path: assets/images/chat_selected.png
  AssetGenImage get chatSelected =>
      const AssetGenImage('assets/images/chat_selected.png');

  /// File path: assets/images/date.png
  AssetGenImage get date => const AssetGenImage('assets/images/date.png');

  /// File path: assets/images/day_night.png
  AssetGenImage get dayNight =>
      const AssetGenImage('assets/images/day_night.png');

  /// File path: assets/images/elipse.png
  AssetGenImage get elipse => const AssetGenImage('assets/images/elipse.png');

  /// File path: assets/images/eye.png
  AssetGenImage get eye => const AssetGenImage('assets/images/eye.png');

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/facebook.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/medicine.png
  AssetGenImage get medicine =>
      const AssetGenImage('assets/images/medicine.png');

  /// File path: assets/images/note.png
  AssetGenImage get note => const AssetGenImage('assets/images/note.png');

  /// File path: assets/images/on_boarding_1.png
  AssetGenImage get onBoarding1 =>
      const AssetGenImage('assets/images/on_boarding_1.png');

  /// File path: assets/images/on_boarding_2.png
  AssetGenImage get onBoarding2 =>
      const AssetGenImage('assets/images/on_boarding_2.png');

  /// File path: assets/images/on_boarding_3.png
  AssetGenImage get onBoarding3 =>
      const AssetGenImage('assets/images/on_boarding_3.png');

  /// File path: assets/images/pills.png
  AssetGenImage get pills => const AssetGenImage('assets/images/pills.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/send.png
  AssetGenImage get send => const AssetGenImage('assets/images/send.png');

  /// File path: assets/images/time.png
  AssetGenImage get time => const AssetGenImage('assets/images/time.png');

  /// File path: assets/images/verification.png
  AssetGenImage get verification =>
      const AssetGenImage('assets/images/verification.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        bottomNavigationBar,
        calendar,
        calendarSelected,
        chat,
        chatSelected,
        date,
        dayNight,
        elipse,
        eye,
        facebook,
        google,
        logo,
        medicine,
        note,
        onBoarding1,
        onBoarding2,
        onBoarding3,
        pills,
        profile,
        send,
        time,
        verification
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
