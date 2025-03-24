//
//  HeaderContainerView.swift
//  SpotifyMock App
//
//  Created by Youssef Ashraf on 24/03/2025.
//

import SwiftUI

struct HeaderContainerView: View {
    var body: some View {
        VStack(alignment: .leading){
                Text("Good evening")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(.white)
                           
        }
        .background(.black)
    }
}

struct SongCard: View {
    let name: String
    var body: some View {
        HStack{
            Image(name)
                .resizable()
                .scaledToFill()
                .frame(width: 80,height: 150)
                .clipped()
                .background(.blue)
            Text(name)
                .fontWeight(.bold)
                .frame(width: 80)
                .scaledToFit()
                .minimumScaleFactor(0.8)
                .foregroundStyle(.white)
                .padding(.trailing, 10)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
        }
        .frame(height: 80, alignment: .leading)
        .background(Color("BackGround"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SongCard(name: "Battamen Aleik")
}
