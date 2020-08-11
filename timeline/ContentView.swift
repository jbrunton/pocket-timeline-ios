//
//  ContentView.swift
//  timeline
//
//  Created by John Brunton on 11/08/2020.
//  Copyright © 2020 com.pocketlearningapps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image(systemName: "photo")
                VStack(alignment: .leading) {
                    Text("World War 2")
                    Text("Events of the Second World War")
                        .font(.subheadline)
                }
            }
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
