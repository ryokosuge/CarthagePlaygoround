//: Playground - noun: a place where people can play

import UIKit
import Himotoki

var str = "Hello, playground"

struct Person: Decodable {
    
    let name: String
    let age: Int
    
    static func decode(e: Extractor) throws -> Person.DecodedType {
        return try Person(
            name: e <| "name",
            age: e <| "age"
        )
    }
}

let JSON = ["name": "RyoKosuge", "age": 25]
let person: Person? = try? decode(JSON)
print(person)