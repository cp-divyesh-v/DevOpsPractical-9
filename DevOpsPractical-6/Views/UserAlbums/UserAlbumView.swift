//
//  UserAlbumView.swift
//  DevOpsPractical-6
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import SwiftUI

struct UserAlbumView: View {
    @StateObject private var viewModel = UserAlbumViewModel()
    var userId: Int
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading, spacing: 8) {
                ForEach(viewModel.usersAlbum, id: \.self) { userAlbum in
                    NavigationLink(destination: PhotoView(id: userAlbum.id)) {
                        Text(userAlbum.title)
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.purple, lineWidth: 1)
                                    .shadow(radius: 1)
                            )
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
            .onAppear {
                viewModel.getUsersDetails(userId)
            }
            .navigationTitle("Albums")
        }
    }
}

struct UserAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        UserAlbumView(userId: .zero)
    }
}
