//
//  Book.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Book: Hashable, Codable, Identifiable{
    var id : Int
    var name : String
    var author : String
    var rate : Int
    var release : Data
    var reviews : [Reviews]
    var discription : String
}
