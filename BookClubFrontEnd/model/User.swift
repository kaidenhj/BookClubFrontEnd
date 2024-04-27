//
//  User.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation
import SwiftUI


struct User: Codable {
    var id : String
    var name : String
    var password : String
    
    var books : [Book]
    struct Book: Codable {
        let id: String
        let volumeInfo: VolumeInfo
        struct VolumeInfo: Codable {
            let title: String
            let authors: [String]
            let description: String
            let imageLinks: ImageLinks
            struct ImageLinks: Codable {
                let smallThumbnail: String
            }
        }
    }
    
    var clubs : [Club]
    struct Club : Codable{
        var id : String
        var name : String
        var director : User
        var monthlyHost : User
        var members : [User]
        var books : [Book]
        var meetingLocation : String
    }
    var ownedClubs : [Club]
    
    var reviews : [Review]
    struct Review: Codable {
        var id : String
        var user : String
        var book : Book
        struct Book: Codable {
            let id: String
            let volumeInfo: VolumeInfo
            struct VolumeInfo: Codable {
                let title: String
                let authors: [String]
                let description: String
                let imageLinks: ImageLinks
                struct ImageLinks: Codable {
                    let smallThumbnail: String
                }
            }
        }
        var date : String
        var content : String
    }
}

