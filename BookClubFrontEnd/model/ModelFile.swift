//
//  ModelFile.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

@Observable
class ModelData {
    var oneBookTest: Book = load("oneBookTestData.json")
    var oneReviewTest: Review = load("oneReviewTestData.json")
    var oneUserTest: User = load("oneUserTestData.json")
    var oneClubTest: Club = load("oneClubTestData.json")
    var twoClubTest: [Club] = load("twoClubTestData.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}


