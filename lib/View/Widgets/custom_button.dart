import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../Utils/app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, this.height = 50,this.title , this.backgroundColor=AppColors.SECOND_COLOR, this.foregroundColor=AppColors.SECOND_COLOR, this.overlayColor=AppColors.SECOND_COLOR,this.onPress, this.borderSideColor=AppColors.SECOND_COLOR}) : super(key: key);
   Widget? title;
   final backgroundColor;
   final foregroundColor;
   Color? borderSideColor;
   double? height;
   final overlayColor ;
   Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10)),
          overlayColor: MaterialStateProperty.all(
            overlayColor.withOpacity(0.1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side:  BorderSide(color: borderSideColor!),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
        ),
        child: title,
      ),
    );
  }
}
