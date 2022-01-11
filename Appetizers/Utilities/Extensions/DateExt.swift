//
//  DateExt.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/11.
//

import Foundation

extension Date {
    
    var eightteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
    
}
