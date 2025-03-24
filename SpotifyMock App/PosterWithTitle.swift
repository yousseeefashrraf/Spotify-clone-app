//
//  PosterWithTitle.swift
//  SpotifyMock App
//
//  Created by Youssef Ashraf on 24/03/2025.
//

import SwiftUI

struct PosterWithTitle: View {
    let name: String
    @Binding var currentSong: String?
    var body: some View {
        Button{
            currentSong = name
        } label:
        {
            VStack(alignment: .leading, spacing: 10){
                Image(name)
                    .resizable()
                    .frame(width: 200,height: 200)
                Text(name)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .semibold ))
                    .frame(width: 190, alignment: .leading)
                    .minimumScaleFactor(0.8)
                    .lineLimit(2)
                    .padding(.top, 10)
                    
            }

        }
    }
}

#Preview {
    PosterWithTitle(name: "The Beach", currentSong: .constant(nil))
}
