//
//  PhotoView.swift
//  DevOpsPractical-6
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import SwiftUI
import Kingfisher

struct PhotoView: View {
    
    @StateObject private var viewModel = PhotoViewModel()
    var id: Int
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading, spacing: 8) {
                ForEach(viewModel.photos, id: \.self) { photos in
                    NavigationLink(destination: DisplayImageView(imageURL: photos.url)) {
                        let url = URL( string: photos.thumbnailUrl)
                        KFImage(url)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                            .cornerRadius(8)
                    }
                }
            }
            .onAppear {
                viewModel.getUsersDetails(id)
            }
        }
        .padding()
        .navigationTitle("Photos")
    }
}
