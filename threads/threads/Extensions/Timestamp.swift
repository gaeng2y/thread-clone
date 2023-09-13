//
//  Timestamp.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/09/13.
//

import Foundation
import Firebase

extension Timestamp {
    var toString: String {
        let formatter: DateComponentsFormatter = {
           let formatter = DateComponentsFormatter()
            formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
            formatter.maximumUnitCount = 1
            formatter.unitsStyle = .abbreviated
            return formatter
        }()
        
        return formatter.string(from: self.dateValue(), to: Date()) ?? ""
    }
}
