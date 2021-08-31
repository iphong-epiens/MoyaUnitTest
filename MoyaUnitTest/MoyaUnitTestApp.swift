//
//  MoyaUnitTestApp.swift
//  MoyaUnitTest
//
//  Created by Inpyo Hong on 2021/08/31.
//

import SwiftUI
import Moya

@main
struct MoyaUnitTestApp: App {
    init() {
        let provider = MoyaProvider<MultiTarget>()
        
        provider.request(MultiTarget(JokeAPI.randomJokes("Inpyo", "Hong"))) { (result) in
            switch result {
            case let .success(response):
                if let result = try? response.map(Joke.self) {
                    print(result.value.joke)
                }
                 
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
