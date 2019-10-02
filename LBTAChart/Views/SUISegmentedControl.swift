//
//  SUISegmentedControl.swift
//  LBTAChart
//
//  Created by Stewart Lynch on 2019-10-01.
//  Copyright © 2019 CreaTECH Solutions. All rights reserved.
//

import SwiftUI

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

struct SUISegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SUISegmentedControl(selectedTime: .constant(0))
    }
}
