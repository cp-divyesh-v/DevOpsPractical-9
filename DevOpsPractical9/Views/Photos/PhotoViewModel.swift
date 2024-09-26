//
//  PhotoViewModel.swift
//  DevOpsPractical9
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import Foundation

class PhotoViewModel: ObservableObject {
    private let webService: WebService
    @Published var photos: [PhotosAPIResponse] = []

    init(webService: WebService = WebService()) {
        self.webService = webService
    }

    func getUsersDetails(_ parameter: Int) {
        webService.request(url: "http://jsonplaceholder.typicode.com/photos?albumId=\(parameter)", method: .get, parameter: [:], headers: nil,
            success: { (_, _, photos: [PhotosAPIResponse]) in
            self.photos = photos
        },
            failure: { error in
            print("API request failed with error: \(error)")
        })
    }
}
