//
//  UserAlbumViewModel.swift
//  DevOpsPractical-6
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import Foundation

class UserAlbumViewModel: ObservableObject {
    private let webService: WebService
    @Published var usersAlbum: [UserAlbumAPIResponse] = []
    
    init(webService: WebService = WebService()) {
        self.webService = webService
    }
    
    func getUsersDetails(_ parameter: Int) {
        webService.request(url: "https://jsonplaceholder.typicode.com/albums?userId=\(parameter)", method: .get, parameter: [:], headers: nil,
            success: { (_, _, usersAlbum: [UserAlbumAPIResponse]) in
            self.usersAlbum = usersAlbum
        },
            failure: { error in
            print("API request failed with error: \(error)")
        })
    }
}
