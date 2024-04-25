//
//  Review.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Review: Codable {
    var id : Int
    var user : User
    var book : Book
    var date : Date
    var rate : Int
    var content : String
}
