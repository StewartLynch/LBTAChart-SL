# LBTAChart-SL
This is a reworking of the SwiftUI Basic Charts app that was originally created by Brian Voong @buildthatapp

The original source code can be found here

 https://www.letsbuildthatapp.com/guides

### Changes Made

- Separated out the model and data into a separate file

  - DayDataPoint.swift

- Separated each view into separate view files

  - ContentView.Swift
  - StackedBarView.Swift
  - SUISegmentedControl.swift (a SwiftUI segmented control)

- Removed the AnyTransition extension

- Added the animation of the graphs to the SUISegmentedControl Picker selection binding

  ```swift
  struct SUISegmentedControl: View {
      @Binding var selectedTime:Int
      var body: some View {
          Picker("", selection: $selectedTime.animation(.easeIn)) {
              Text("Morning").tag(0)
              Text("Afternoon").tag(1)
              Text("Evening").tag(2)
          }.pickerStyle(SegmentedPickerStyle())
          .padding(.horizontal, 24)
          .padding(.bottom, 16)
      }
  }
  
  ```

  

  ### 