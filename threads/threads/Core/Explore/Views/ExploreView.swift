//
//  ExploreView.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/19.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            VStack {
                                UserCell(user: user)
                                
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView()
            })
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText, prompt: "Serach")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
