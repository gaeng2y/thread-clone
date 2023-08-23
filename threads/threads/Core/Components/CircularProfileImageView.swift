//
//  CircularProfileImageView.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("heung-min-son")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
