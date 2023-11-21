import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todoapp/ui/utilites/app_assets.dart';
import 'package:todoapp/ui/utilites/app_colors.dart';
import 'package:todoapp/ui/utilites/app_theme.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),

      child: Slidable(
        startActionPane: ActionPane(
            motion: DrawerMotion(),
          extentRatio: .3,
          children: [
            Container(
              child: SlidableAction(
                onPressed: (_){},
                backgroundColor: Colors.red,
                foregroundColor: AppColors.white,
                icon: Icons.delete,
                label: 'Delete',
           ),
            )
          ],),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          height: MediaQuery.of(context).size.height * .13,
          child: Row(
            children: [
              const VerticalDivider(),
              SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Play basketball",
                      style: AppTheme.taskTitleTextStyle,
                    ),
                    Text(
                      "Description",
                      style: AppTheme.taskDescriptionTextStyle,
                    )
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primary,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Image.asset(AppAssets.checkBox),
              )
            ],
          ),
        ),
      ),
    );
  }
}
