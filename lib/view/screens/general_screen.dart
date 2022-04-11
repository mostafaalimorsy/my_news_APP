import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_cubit/controller/cubit/cubit.dart';
import 'package:news_cubit/controller/cubit/states.dart';
import 'package:news_cubit/view/widget/articalConditionalBuilder.dart';

class General_screen extends StatelessWidget {
  const General_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , NewsAppStates>(
      listener: (BuildContext context, NewsAppStates state) {  },
      builder: (BuildContext context, NewsAppStates state) {
        var list = AppCubit.get(context).general;
        return  ArticalConditionalBuilder(list , context);
      },);
  }
}
