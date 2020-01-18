//
//  ContentView.swift
//  SwiftUIZStackInDepth
//
//  Created by Ramill Ibragimov on 18.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("ZStack Example")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Divider().background(Color.white)
                ZStack(alignment: .bottomTrailing) {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.white)
                        .opacity(0.3)
                        .frame(width: 150, height: 150)
                    VStack {
                        Image(systemName: "house")
                            .foregroundColor(.white)
                            .opacity(0.8)
                        Text("House")
                            .foregroundColor(.white)
                            .opacity(0.7)
                    }
                    .padding()
                    .shadow(radius: 10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
