//
//  Details.swift
//  Cw9
//
//  Created by Aisha AlQabandi on 05/11/2022.
//

import SwiftUI

struct Details: View {
    var detail: movie
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Image(detail.name)
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 10)
            
            VStack{
                Image(detail.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(3)
                
                Text(detail.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(detail.actors, id: \.self) { a in
                            VStack{
                                Text(a)
                                    .font(.title3)
                                Image(a)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 150)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
            }
        }.foregroundColor(.white)
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(detail: movie(name: "The Matrix", actors: ["Keanu Reeves", "Laurence Fishburn", "Carrie-Ann Moss"]))
    }
}


