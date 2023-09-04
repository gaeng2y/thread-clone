//
//  User.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/31.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
