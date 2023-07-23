import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:know_our_school/ViewModel/view_model.dart';
import 'package:know_our_school/provider/my_provider.dart';
import 'package:provider/provider.dart';

class SchoolInfo extends StatefulWidget {
  SchoolInfo({Key? key}) : super(key: key);

  @override
  State<SchoolInfo> createState() => _SchoolInfoState();
}

class _SchoolInfoState extends State<SchoolInfo> {
  ViewModel viewModel = ViewModel();
  late MyProvider provider;

  @override
  Widget build(BuildContext context) {
    provider =Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color(0xff477B71),
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title:  Text(
          'School Info',
          style: TextStyle(color: Colors.white, fontSize: 30.sp),
        ),
        centerTitle: true,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60.r),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/school.png',
                width: 250.w,
              ),
            ),
            reusableTextField(viewModel.schoolName, Icons.school),
             SizedBox(
              height: 15.h,
            ),
            reusableTextField(
                viewModel.schoolAddress, Icons.location_on_rounded),
             SizedBox(
              height: 15.h,
            ),
            reusableTextField(viewModel.studentsNo, Icons.person),
             SizedBox(
              height: 15.h,
            ),
            reusableTextField(viewModel.teachersNo, Icons.person),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Container(
                  width: 300.w,
                  height: 70.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 12.0)
                    ],
                    borderRadius: BorderRadius.circular(30.0.r),
                    color: const Color(0xffe9b637),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ButtonTheme(
                      minWidth: 300.w,
                      child: TextButton(
                        onPressed: () {
                          viewModel.showInfo();
                          provider.getInfo();

                        },
                        child:  Text(
                          'Show Data',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget reusableTextField(String text, IconData iconShape) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: const Color(0xffd3d3d3),
          borderRadius: BorderRadius.circular(30.0.r),
        ),
        child: Row(
          children: [
             SizedBox(
              width: 10.w,
            ),
            Icon(
              iconShape,
              color: Colors.white,
              size: 35,
            ),
             SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              style:  TextStyle(color: Colors.white, fontSize: 25.sp),
            ),
          ],
        ),
      ),
    );
  }
}
