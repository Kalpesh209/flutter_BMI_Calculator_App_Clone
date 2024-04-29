import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Screens/result_screen.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/bottom_container_widget.dart';

import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/calculator_brain.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/icon_content_widget.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/reusable_item_widget.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/rounded_icon_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//ENUMERATION : The action of establishing number of something , implicit way

enum Gender {
  male,
  female,
}

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  late Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 50;
  int age = 20;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _selectGenderWidget(),
          SizedBox(
            height: 10,
          ),
          _heightWidget(),
          SizedBox(
            height: 10,
          ),
          _weightWidget(),
          SizedBox(
            height: 10,
          ),
          _bottomContainer(),
        ],
      ),
    );
  }

  // All Design widgets will go Build()

  Widget _bottomContainer() {
    return BottomContainerWidget(
      text: AppStrings.calculate,
      onTap: () {
        Calculate calc = Calculate(height: height, weight: weight);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              bmi: calc.result(),
              resultText: calc.getText(),
              advise: calc.getAdvise(),
              textColor: calc.getTextColor(),
            ),
          ),
        );
      },
    );
  }

  Widget _weightWidget() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ReusableItemWidget(
              colour: AppColors.kColor1D1E33,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.weight,
                    style: AppTextStyle.klabelTextStyle,
                  ),
                  Text(
                    weight.toString(),
                    style: AppTextStyle.kDigitTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButtonWidget(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      RoundIconButtonWidget(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableItemWidget(
              colour: AppColors.kColor1D1E33,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.age,
                    style: AppTextStyle.klabelTextStyle,
                  ),
                  Text(
                    age.toString(),
                    style: AppTextStyle.kDigitTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButtonWidget(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      SizedBox(width: 15.0),
                      RoundIconButtonWidget(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _heightWidget() {
    return Expanded(
      child: ReusableItemWidget(
        colour: AppColors.kColor1D1E33,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.height,
              style: AppTextStyle.klabelTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: AppTextStyle.kDigitTextStyle,
                ),
                Text(
                  AppStrings.cm,
                  style: AppTextStyle.klabelTextStyle,
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                inactiveTrackColor: AppColors.kColor8D8E98,
                thumbColor: AppColors.kColorEB1555,
                overlayColor: AppColors.kColor29EB1555,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 35.0),
              ),
              child: Slider(
                value: height.toDouble(),
                min: 120,
                max: 220,
                onChanged: (double newValue) {
                  setState(() {
                    height = newValue.round();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _selectGenderWidget() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              child: ReusableItemWidget(
                colour: selectedGender == Gender.male
                    ? AppColors.kColor1D1E33
                    : AppColors.kColor111328,
                cardChild: IconContentWidget(
                  myicon: FontAwesomeIcons.mars,
                  text: AppStrings.male,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              child: ReusableItemWidget(
                colour: selectedGender == Gender.female
                    ? AppColors.kColor1D1E33
                    : AppColors.kColor111328,
                cardChild: IconContentWidget(
                  myicon: FontAwesomeIcons.venus,
                  text: AppStrings.female,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarWidget() {
    return AppBar(
      title: Center(
        child: Text(
          AppStrings.bmiCalculator,
        ),
      ),
    );
  }
}
