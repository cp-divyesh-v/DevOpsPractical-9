//
//  UserListViewModel.swift
//  DevOpsPractical9
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import Foundation

class UserViewModel: ObservableObject {
    private let webService: WebService
    @Published var users: [UserListAPIResponse] = []

    init(webService: WebService = WebService()) {
        self.webService = webService
    }

    func getUsersDetails() {
        webService.request(url: "http://jsonplaceholder.typicode.com/users", method: .get, parameter: [:], headers: nil,
            success: { (_, _, users: [UserListAPIResponse]) in
            self.users = users
        },
            failure: { error in
            print("API request failed with error: \(error)")
        })
    }
}
