//
//  Model.swift
//  MoyaUnitTest
//
//  Created by Inpyo Hong on 2021/08/31.
//

import Foundation

struct Joke: Decodable {
    var type: String
    var value: Value

    struct Value: Decodable {
        var id: Int
        var joke: String
    }
}
