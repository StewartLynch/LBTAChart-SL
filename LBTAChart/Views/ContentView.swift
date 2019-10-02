//
//  ContentView.swift
//  LBTAChart
//
//  Created by Stewart Lynch on 2019-09-30.
//  Copyright © 2019 CreaTECH Solutions. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var dataSet = [DayDataPoint.getData(), DayDataPoint.getAfternoonData(), DayDataPoint.getEveningData()]
    var spacing: CGFloat = 24
    @State var selectedTime = 0
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(.sRGB, red: 94/255, green: 244/255, blue: 198/255, opacity: 1)
                    .edgesIgnoringSafeArea(.all)
                VStack (spacing: 16) {
                    Spacer()
                    Text("Calory Intake")
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 14/255, green: 75/255, blue: 58/255))
                        .padding(.bottom, 0)
                    SUISegmentedControl(selectedTime: self.$selectedTime)
                    
                    HStack (spacing: self.spacing) {
                        // WARNING: Don't use a ForEach here, it doesn't animate.
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][0], width: (geometry.size.width - 8 * self.spacing) / 7)
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][1], width: (geometry.size.width - 8 * self.spacing) / 7)
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][2], width: (geometry.size.width - 8 * self.spacing) / 7)
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][3], width: (geometry.size.width - 8 * self.spacing) / 7)
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][4], width: (geometry.size.width - 8 * self.spacing) / 7)
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][5], width: (geometry.size.width - 8 * self.spacing) / 7)
                        StackedBarView(dataPoint: self.dataSet[self.selectedTime][6], width: (geometry.size.width - 8 * self.spacing) / 7)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
