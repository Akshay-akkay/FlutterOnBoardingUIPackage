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
        Text(
          slides[index].sliderHeading,
          style: TextStyle(
            fontFamily: Constants.OPEN_SANS,
            fontWeight: FontWeight.w700,
            fontSize: 20.5,
            color: Color(0xff3BA7A9),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              slides[index].sliderSubHeading,
              style: TextStyle(
                fontFamily: Constants.OPEN_SANS,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
                fontSize: 12.5,
                color: Color(0xff676464),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
