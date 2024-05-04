//
//  UserListAPIResponse.swift
//  DevOpsPractical-6
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import Foundation

struct UserListAPIResponse: Codable, Hashable {
    let id: Int
    let name: String
    let username: String
    let email: String
}
