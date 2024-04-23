//
//  User.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation
import SwiftUI


struct User: Hashable, Codable, Identifiable{
    var id : Int
    var name : String
    var password : String
    var books : [Book]
    var clubs : [Club]
    var ownedClubs : [Club]
    var reviews : [Review]
}
