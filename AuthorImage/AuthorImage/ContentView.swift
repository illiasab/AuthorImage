//
//  ContentView.swift
//  AuthorImage
//
//  Created by Ylyas Abdywahytow on 9/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var isHidden: Bool = false
    @State private var artistNames: [Artist] = []

    var filteredArtists: [Artist] {
      
        if searchText.isEmpty {
            return artistNames
        } else {
            return artistNames.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredArtists) { artist in
                NavigationLink(destination: ArtistDetailView(artist: artist)) {
                    Text(artist.name)
                        .font(.system(size: 20, weight: .medium))
                    Text(artist.bio)
                                     .font(.system(size: 12, weight: .regular))
                                     .foregroundColor(.gray) 
                    
                                     .lineLimit(3)
                             }
                             .padding(.vertical, 8)
                         }
                     }
            .navigationTitle("Find an Author")
            .searchable(text: $searchText, isPresented: $isHidden, prompt: "Search for an Author")
            .onAppear {
                artistNames = loadArtists() 
            }
        }
    }


#Preview {
    ContentView()
}
