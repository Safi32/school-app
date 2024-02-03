import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF345Fb4);
const Color kSecondaryColor = Color(0xFF6789CA);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFa5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);

const kDefaultPadding = 20.0;

const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

const sizedBox = SizedBox(
  height: kDefaultPadding,
);

const kWidthSizedBox = SizedBox(
  width: kDefaultPadding,
);


const kHalfWidthSizedBox = SizedBox(
  width: kDefaultPadding / 2,
);

const kHalfSizedBox = SizedBox(
height: kDefaultPadding / 2,
);

const String emailPattern =    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';