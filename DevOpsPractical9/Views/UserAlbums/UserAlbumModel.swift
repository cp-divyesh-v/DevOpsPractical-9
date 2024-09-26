//
//  UserAlbumModel.swift
//  DevOpsPractical9
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import Foundation

struct UserAlbumAPIResponse: Codable, Hashable {
    let userId: Int
    let id: Int
    let title: String
}
