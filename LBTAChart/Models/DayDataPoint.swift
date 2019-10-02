//
//  DayDataPoint.swift
//  LBTAChart
//
//  Created by Stewart Lynch on 2019-09-30.
//  Copyright © 2019 CreaTECH Solutions. All rights reserved.
//

import UIKit

struct DayDataPoint: Identifiable {
    let id = UUID()
    let day: String
    let value: CGFloat
}

extension DayDataPoint {
    static func getData() -> [DayDataPoint] {
        return [
        .init(day: "Su", value: 0.2),
        .init(day: "M", value: 0.5),
        .init(day: "T", value: 0.3),
        .init(day: "W", value: 0.8),
        .init(day: "TH", value: 0.7),
        .init(day: "F", value: 0.4),
        .init(day: "Sa", value: 1.0)
        ]
    }
    static func getAfternoonData() -> [DayDataPoint] {
        return [
        .init(day: "Su", value: 0.1),
        .init(day: "M", value: 0.6),
        .init(day: "T", value: 0.2),
        .init(day: "W", value: 0.3),
        .init(day: "TH", value: 0.4),
        .init(day: "F", value: 0.9),
        .init(day: "Sa", value: 0.5)
        ]
    }
    
    static func getEveningData() -> [DayDataPoint] {
        return [
       .init(day: "Su", value: 0.9),
        .init(day: "M", value: 0.4),
        .init(day: "T", value: 0.3),
        .init(day: "W", value: 0.3),
        .init(day: "TH", value: 0.5),
        .init(day: "F", value: 0.2),
        .init(day: "Sa", value: 0.1)
        ]
    }
}
