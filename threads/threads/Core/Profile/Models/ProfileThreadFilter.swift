//
//  ProfileThreadFilter.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var id: Int { self.rawValue }
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
}
