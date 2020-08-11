//
//  TimelineFetcher.swift
//  timeline
//
//  Created by John Brunton on 11/08/2020.
//  Copyright © 2020 com.pocketlearningapps. All rights reserved.
//

import Foundation

public class TimelineFetcher: ObservableObject {
    @Published var timelines = [Timeline]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "http://localhost:3000/timelines.json")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Timeline].self, from: d)
                    DispatchQueue.main.async {
                        self.timelines = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
         
    }
}

