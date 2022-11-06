//
//  ContentView.swift
//  Cw9
//
//  Created by Aisha AlQabandi on 05/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(movies) { m in
                NavigationLink {
                    Details(detail: m)
                } label: {
                    ExtractedView(movien: m)
                }
            }.navigationTitle("Movies")
        }.accentColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var movien: movie
    var body: some View {
        HStack{
            Image(movien.name)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(movien.name)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}
