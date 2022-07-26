import 'package:flutter/material.dart';
class _bulder_stepper extends StatefulWidget {
  const _bulder_stepper({Key? key}) : super(key: key);

  @override
  State<_bulder_stepper> createState() => _bulder_stepperState();
}

class _bulder_stepperState extends State<_bulder_stepper> {
  @override
  int currentStep =0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stepper(
                currentStep: currentStep,
                onStepTapped: (index){
                  setState(()=>currentStep);
                },
                onStepContinue: (){
                  if(currentStep !=3){
                    setState(()=>currentStep++);
                  }
                },
                onStepCancel: (){
                  if(currentStep !=0){
                    setState(()=>currentStep--);
                  }
                },
                steps:[
                  Step(isActive: currentStep>=1,title: Text("Step 1"), content: Text("Content for Step 1")),
                  Step(isActive: currentStep>=2,title: Text("Step 2"), content: Text("Content for Step 2")),
                  Step(isActive: currentStep>=3,title: Text("Step 3"), content: Text("Content for Step 3")),
                ]
            )

          ],
        ),
      ),
    );
  }
}
