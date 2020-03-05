//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Shihchiao Chao on 1/29/20.
//  Copyright © 2020 Shihchiao Chao. All rights reserved.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
