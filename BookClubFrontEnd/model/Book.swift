//
//  Book.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Book: Hashable, Codable, Identifiable{
    var id : String
    var title : String
    var authors : [String]
    //var rate : Int
    var publishedDate : String
    //var reviews : [Review]
    var description : String
}
