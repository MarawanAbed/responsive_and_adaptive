import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

TextStyle kTextStyle16w00(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}

TextStyle kTextStyle14w400(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(14, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

TextStyle kTextStyle12w400(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(12, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

TextStyle kTextStyle24w600(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(24, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

TextStyle kTextStyle20w600(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(20, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

TextStyle kTextStyle18w600(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(18, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

TextStyle kTextStyle16w600(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

TextStyle kTextStyle16w700(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
}

double getResponsiveFontSize(double fontSize, context) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  //or we can
  var dispatcher=PlatformDispatcher.instance;
  //physical width/device pixel ratio = width in logical pixels
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var newWidth = physicalWidth / devicePixelRatio;
  double width = MediaQuery.of(context).size.width;
  //this point change depend on the break point you put in your layout
  if (width < 600) {//tablet
    return width / 550;
  } else if (width < 1300) {//desktop
    return width / 1000;
  } else {
    return width / 1000;
  }
}

TextStyle kTextStyle16Regular(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 0,
  );
}

TextStyle kTextStyle16Medium(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

TextStyle kTextStyle20Medium(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(20, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

TextStyle kTextStyle16SemiBold(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}

TextStyle kTextStyle16Bold(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    height: 0,
  );
}

TextStyle kTextStyle20SemiBold(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}

TextStyle kTextStyle12Regular(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(12, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 0,
  );
}

TextStyle kTextStyle14Regular(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(14, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 0,
  );
}

TextStyle kTextStyle24SemiBold(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(24, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}

TextStyle kTextStyle18SemiBold(BuildContext context) {
  return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(18, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}
