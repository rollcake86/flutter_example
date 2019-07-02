import 'package:flutter/material.dart';

class StepperHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StepperApp();
  }
}

class StepperApp extends State<StepperHome> {
  int current_step = 0;
  List<Step> my_steps = [
    new Step(
        title: new Text("Step 1"), content: new Text("Hello!"), isActive: true),
    new Step(
        title: new Text("Step 2"),
        content: new Text("Hello!"),
        state: StepState.editing,
        isActive: true),
    new Step(
        title: new Text("Step 3"),
        content: new Text("Hello!"),
        state: StepState.disabled,
        isActive: true),
    new Step(
        title: new Text("Step 4"), content: new Text("Hello!"), isActive: true),
    new Step(
        title: new Text("Step 5"),
        content: new Text("Hello!"),
        state: StepState.complete,
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Simple Material App"),
      ),
      body: new Container(
        child: new Stepper(
          currentStep: this.current_step,
          steps: my_steps,
          type: StepperType.vertical,
          onStepTapped: (step){
            setState(() {
              current_step = step;
            });
          },
          onStepCancel: (){
            setState(() {

              if(current_step > 0){
                current_step = current_step -1;
              }else{
                current_step = 0;
              }
            });
          },
          onStepContinue: (){
            setState(() {
              if(current_step < my_steps.length - 1){
                current_step = current_step +1;
              }else{
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
