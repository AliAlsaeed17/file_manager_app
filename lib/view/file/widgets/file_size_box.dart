import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class FileSizeBox extends StatelessWidget {
  const FileSizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Used 186 GB',
                  style: TextStyle(
                    color: AppColors.darkBlue.withOpacity(0.6),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Total 186 GB',
                  style: TextStyle(
                    color: AppColors.darkBlue.withOpacity(0.6),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          VerticalSizedBox(20),
          Container(
            height: 17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Colors.redAccent,
                AppColors.violet,
                AppColors.blue,
              ]),
            ),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.transparent,
                inactiveTrackColor: Colors.transparent,
                trackShape: RectangularSliderTrackShape(),
                trackHeight: 10.0,
                thumbColor: AppColors.violet,
                thumbShape: RoundSliderThumbShape(
                  elevation: 6,
                  enabledThumbRadius: 12.0,
                ),
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
              ),
              child: Slider(
                value: 0,
                onChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
