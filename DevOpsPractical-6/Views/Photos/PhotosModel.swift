//
//  PhotosModel.swift
//  DevOpsPractical-6
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import Foundation

struct PhotosAPIResponse: Codable, Hashable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
}
