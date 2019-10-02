//
//  StackedBarView.swift
//  LBTAChart
//
//  Created by Stewart Lynch on 2019-09-30.
//  Copyright © 2019 CreaTECH Solutions. All rights reserved.
//

import SwiftUI


struct StackedBarView: View {
    var dataPoint: DayDataPoint
    var width: CGFloat
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule()
                    .frame(width: width, height: 200)
                    .overlay(RoundedRectangle(cornerRadius: 20).fill(Color(.sRGB, red: 74/255, green: 231/255, blue: 184/255)))
                Capsule()
                    .frame(width: width, height: dataPoint.value * 200)
                    .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                
            }.padding(.bottom, 8)
            Text(dataPoint.day)
                .font(.system(size: 14))
        }
        
    }
}

struct StackedBarView_Previews: PreviewProvider {
    static var previews: some View {
        StackedBarView(dataPoint: DayDataPoint.getData()[0], width: 30.0)
    }
}

