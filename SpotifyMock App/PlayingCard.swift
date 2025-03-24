//
//  PlayingCard.swift
//  SpotifyMock App
//
//  Created by Youssef Ashraf on 24/03/2025.
//

import SwiftUI

struct PlayingCard: View {
    @Binding var currentSong: String?
    @State var isPlaying = true
    var body: some View {
        HStack(alignment: .center){
            if let currentSong{
                Image(currentSong)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 70, alignment: .center)
                VStack(){
                    Text(currentSong)
                        .foregroundStyle(.white)
                        .font(.system(size: 20, weight: .bold))                .padding(.top, 10)

                }
                .frame(height: 70,alignment: .top)
                Spacer()
                
                
                Button{
                    isPlaying.toggle()
                }label: {
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                        .frame(height: 40, alignment: .center)
                        .frame(height: 100)
                        .padding(.trailing, 30)

                }
            }

        }
        .frame(maxWidth: .infinity,maxHeight: 70, alignment: .leading)
        .background(Color("BackGround"))
    }
}

#Preview {
    PlayingCard(currentSong: .constant("Khasran"))
}
