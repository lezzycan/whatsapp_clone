import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone_app/constants/colors.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({super.key, required this.message, required this.date});
  final String message;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 10.w, right: 30.w, top: 5.h, bottom: 20.h),
                child: Text(message, style: TextStyle(fontSize: 16.sp),),
              ),
              Positioned(
                bottom: 4.h,
                right: 10.w,
                child: Row(
                  children: [
                    Text(date, style: TextStyle(fontSize: 13.sp, color: Colors.white60),),
                  SizedBox(width: 5.w,),
                  Icon(Icons.done_all, size: 20.r, color: Colors.white24,)
                  ],
                ) )
            ],
          ),
        ),
      ),
    );
  }
}
