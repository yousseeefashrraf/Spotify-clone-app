//
//  BarView.swift
//  SpotifyMock App
//
//  Created by Youssef Ashraf on 24/03/2025.
//

import SwiftUI

struct BarView: View {
    let size: CGFloat = 60
    @Binding  var currentPage: String
    var body: some View {
        HStack(alignment: .bottom, spacing: 20){
            VStack(alignment: .center) {
                Button(){
                    currentPage = "Home"
                } label: {
                    if (currentPage == "Home"){
                        Image(systemName: "house.fill")
                            .resizable()
                            .scaledToFit()
                    } else {
                        Image(systemName: "house")
                            .resizable()
                            .scaledToFit()
                    }
                }

                Text("Home")
            }
            .foregroundStyle(.gray)
            .frame(width: size+40,height: size)

            
            VStack(alignment: .center){
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                Text("Search")
            }
            .foregroundStyle(.gray)
            .frame(width: size+40,height: size)

            VStack(alignment: .center){
                Button {
                    currentPage = "Library"
                } label: {
                    if (currentPage == "Library"){
                        Image(systemName: "books.vertical.fill")
                            .resizable()
                            .scaledToFit()
                    } else {
                        Image(systemName: "books.vertical")
                            .resizable()
                            .scaledToFit()
                    }
                }

                Text("Your library")
                
            }
            .frame(width: size+40,height: size)
            .foregroundStyle(.gray)


        }
        .padding(.horizontal, 20)
        .padding(.top, 30)
        .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
        .background(Color("BackGround"))
    }
}

#Preview {
    BarView(currentPage: .constant("Home"))
}
