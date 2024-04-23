//
//  Club.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Club : Hashable, Codable, Identifiable{
    var id : Int
    var name : String
    var director : User
    var monthlyHost : User
    var members : [User]
    var books : [Book]
    var memberRequest : [User]
    var meetingLocation : String
}
