//
//  UserListView.swift
//  DevOpsPractical9
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import SwiftUI

struct UserListView: View {

    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical) {

                Text("User List")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                LazyVStack(alignment: .leading, spacing: 16) {
                    ForEach(viewModel.users, id: \.self) { user in
                        NavigationLink(destination: UserAlbumView(userId: user.id)) {
                            VStack(alignment: .leading) {
                                HStack(spacing: 16) {
                                    Image("profile")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .clipShape(Circle())
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(user.name)
                                            .font(.title3)
                                            .fontWeight(.medium)
                                        Text(user.email)
                                            .foregroundColor(.gray)
                                            .padding(.bottom)
                                    }
                                }
                                Divider()
                                    .padding(.leading, 24)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear {
            viewModel.getUsersDetails()
        }
        .background {
            NavigationLink(destination: UserAlbumView(userId: 1)) {

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
