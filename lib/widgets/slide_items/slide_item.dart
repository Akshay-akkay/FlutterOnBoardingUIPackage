import 'package:flutter/cupertino.dart';
import '../../constants/constants.dart';
import 'package:on_boarding_ui/model/slider.dart' as SliderModel;

class SlideItem extends StatelessWidget {
  final List<SliderModel.Slider> slides;

  final int index;

  const SlideItem(this.slides, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width * 0.8,
          width: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(slides[index].sliderImageUrl),
                fit: BoxFit.contain),
          ),
        ),
        SizedBox(
          height: 60.0,
        ),
        slides[index].sliderHeading,
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: slides[index].sliderSubHeading,
          ),
        )
      ],
    );
  }
}
