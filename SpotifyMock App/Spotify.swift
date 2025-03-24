//
//  Spotify.swift
//  SpotifyMock App
//
//  Created by Youssef Ashraf on 24/03/2025.
//

import SwiftUI

struct Spotify: View {
    @State private var currentPage = "Home"
    @State private var currentSong: String? = nil
    let gridItems: [GridItem] = [GridItem(.flexible(), spacing: 15),
                                 GridItem(.flexible())]
    var body: some View {
        ZStack(){
            LinearGradient(colors: [Color("HomePageGradient"),  .black,.black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        Text("Good evening")
                            .foregroundStyle(.white)
                            .font(.system(size: 30, weight: .bold))
                            .padding(.bottom, 20)
                        
                        LazyVGrid(columns: gridItems, spacing: 16){
                            SongCard(name: "Battamen Aleik", currentSong: $currentSong)
                            SongCard(name: "Deb", currentSong: $currentSong)
                            SongCard(name: "Exit Music", currentSong: $currentSong)
                            SongCard(name: "الخلاصه", currentSong: $currentSong)
                            SongCard(name: "Yum Khdood", currentSong: $currentSong)
                            SongCard(name: "The Beach", currentSong: $currentSong)
                        }
                        
                        
                        
                        VStack(alignment: .leading){
                            Text("Recently played")
                                .foregroundStyle(.white)
                                .font(.system(size: 30, weight: .bold))
                                .padding(.bottom, 20)
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack (spacing: 20){
                                    PosterWithTitle(name: "Sahby Ya Sahby", currentSong: $currentSong)
                                    PosterWithTitle(name: "Mesh Kol Wahed", currentSong: $currentSong)
                                    PosterWithTitle(name: "Luther", currentSong: $currentSong)
                                    PosterWithTitle(name: "Grandpa Calling", currentSong: $currentSong)
                                    PosterWithTitle(name: "الخلاصه", currentSong: $currentSong)
                                }
                                
                            }
                        }
                        .padding(.vertical, 30)
                        
                        VStack(alignment: .leading){
                            Text("New releases for you")
                                .foregroundStyle(.white)
                                .font(.system(size: 30, weight: .bold))
                                .padding(.bottom, 20)
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack (spacing: 20){
                                    PosterWithTitle(name: "Wahashni Sotek", currentSong: $currentSong)
                                    PosterWithTitle(name: "مالكمش عندي غير دا", currentSong: $currentSong)
                                    PosterWithTitle(name: "Khasran", currentSong: $currentSong)
                                    PosterWithTitle(name: "Grandpa Calling", currentSong: $currentSong)
                                    PosterWithTitle(name: "الخلاصه", currentSong: $currentSong)
                                }
                                
                            }
                        }
                        .padding(.vertical, 20)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 50)
                    .padding(.horizontal, 12)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .padding(.horizontal, 12)
                if let currentSong {
                    PlayingCard(currentSong: $currentSong)
                        
                }
                BarView(currentPage: $currentPage)
            }
            }
    }
}



#Preview {
    Spotify()
}
