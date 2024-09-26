//
//  DisplayView.swift
//  DevOpsPractical9
//
//  Created by Divyesh Vekariya on 04/05/24.
//

import SwiftUI
import Kingfisher

struct DisplayImageView: View {
    var imageURL = String()
    var body: some View {
            let url = URL( string: imageURL)
            AsyncImage(url: url)
                .aspectRatio(contentMode: .fit)
                .padding()
    }
}

struct DisplayImageView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayImageView()
    }
}
