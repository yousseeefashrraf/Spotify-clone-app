//
//  Spotify.swift
//  SpotifyMock App
//
//  Created by Youssef Ashraf on 24/03/2025.
//

import SwiftUI

struct Spotify: View {
    let gridItems: [GridItem] = [GridItem(.flexible(), spacing: 25),
                                 GridItem(.flexible())]
    var body: some View {
        ZStack(){
            LinearGradient(colors: [Color("HomePageGradient"),  .black,.black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                    Text("Good evening")
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .bold))
                        .padding(.bottom, 20)
                        
                    LazyVGrid(columns: gridItems, spacing: 16){
                        SongCard(name: "Battamen Aleik")
                        SongCard(name: "Deb")
                        SongCard(name: "Exit Music")
                        SongCard(name: "الخلاصه")
                        SongCard(name: "Yum Khdood")
                        SongCard(name: "The Beach")
                    }
                        
                    
                    
                    VStack(alignment: .leading){
                        Text("Recently played")
                            .foregroundStyle(.white)
                            .font(.system(size: 30, weight: .bold))
                            .padding(.bottom, 20)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack (spacing: 20){
                                PosterWithTitle(name: "Sahby Ya Sahby")
                                PosterWithTitle(name: "Mesh Kol Wahed")
                                PosterWithTitle(name: "Luther")
                                PosterWithTitle(name: "Grandpa Calling")
                                PosterWithTitle(name: "الخلاصه")
                            }

                        }
                    }
                    .padding(.vertical, 30)
                    
                    VStack(alignment: .leading){
                        Text("New releases for you")
                            .foregroundStyle(.white)
                            .font(.system(size: 30, weight: .bold))
                            .padding(.bottom, 20)
                        
                        ScrollView(.horizontal){
                            HStack (spacing: 20){
                                PosterWithTitle(name: "Wahashni Sotek")
                                PosterWithTitle(name: "مالكمش عندي غير دا")
                                PosterWithTitle(name: "Khasran")
                                PosterWithTitle(name: "Grandpa Calling")
                                PosterWithTitle(name: "الخلاصه")
                            }

                        }
                    }
                    .padding(.vertical, 50)
                    Spacer()
                }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 50)
                    .padding(.horizontal, 12)
                                    
            }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .padding(.horizontal, 12)
                
        


            }
    }
}



#Preview {
    Spotify()
}
