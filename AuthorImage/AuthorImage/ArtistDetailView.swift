//
//  ArtistDetailView.swift
//  AuthorImage
//
//  Created by Ylyas Abdywahytow on 9/22/24.
//
import SwiftUI
import Foundation

struct ArtistDetailView: View {
    let artist: Artist

    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack {
                //
                HStack{
                    Image(artist.image)
                        .resizable()
                        .font(.body)
                        .frame(width:400 , height: 400)
                    
                    
                        .padding()
                }
                
                Spacer()
                //Text("\(artist.bio)")
            }
            .navigationTitle(artist.name)
        }
    }
}


#Preview {
    ContentView()
}

