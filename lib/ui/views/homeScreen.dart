import 'package:af_monitoring/core/viewmodels/HomeViewModel.dart';
import 'package:af_monitoring/ui/widgets/doubleLampWidget.dart';
import 'package:af_monitoring/ui/widgets/growPanelWidget.dart';
import 'package:af_monitoring/ui/widgets/ledPanelWidget.dart';
import 'package:af_monitoring/ui/widgets/singleLampWidget.dart';
import 'package:af_monitoring/ui/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>.withConsumer(
      onModelReady: (model) => model.initialiseClass(),
      viewModel: HomeViewModel(),
      builder: (context, model, children) {
        return Scaffold(
          backgroundColor: Color(0xff111322),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TitleWidget(),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SingleLampWidget(
                        title: 'Fresh Water',
                        color: model.colorFw01,
                      ),
                      SizedBox(width: 9.0),
                      SingleLampWidget(
                        title: 'Recycled Water',
                        color: model.colorRw01,
                      ),
                      SizedBox(width: 9.0),
                      DoubleLampWidget(
                        title: 'Irrigation',
                        colorOne: model.colorIr01,
                        colorTwo: model.colorIr02,
                      ),
                      SizedBox(width: 9.0),
                      SingleLampWidget(
                        title: 'Recycled Water',
                        color: model.colorRw02,
                      ),
                      SizedBox(width: 9.0),
                      SingleLampWidget(
                        title: 'Fresh Water',
                        color: model.colorFw02,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      LedPanelWidget(
                        color: model.colorLp01,
                        title: 'Led Panel-01',
                      ),
                      Row(
                        children: <Widget>[
                          GrowPanelWidget(
                            title: 'Grow Panel 1',
                          ),
                          GrowPanelWidget(
                            title: 'Grow Panel 2',
                          ),
                        ],
                      ),
                      LedPanelWidget(
                        color: model.colorLp02,
                        title: 'Led Panel-02',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
