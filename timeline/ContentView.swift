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
    @ObservedObject var fetcher = TimelineFetcher()
 
    var body: some View {
        TabView(selection: $selection){
            List(fetcher.timelines) { timeline in
                Image(systemName: "photo")
                VStack(alignment: .leading) {
                    Text(timeline.title)
                    Text(timeline.description)
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
