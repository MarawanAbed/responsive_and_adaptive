

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle kTextStyle16w500(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(16, context),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
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
    fontSize:getResponsiveFontSize(16, context),
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

double getResponsiveFontSize(double fontSize,context)
{
  double scaleFactor= getScaleFactor(context);
  double responsiveFontSize=fontSize*scaleFactor;
  double lowerLimit=fontSize*0.8;
  double upperLimit=fontSize*1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width=MediaQuery.of(context).size.width;
  if(width<600)
  {
    return width/400;
  }else if(width<900)
  {
    return width/700;
  }else
  {
    return width/1000;
  }
}