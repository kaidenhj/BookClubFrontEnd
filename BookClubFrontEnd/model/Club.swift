//
//  Club.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Club : Codable{
    let id : String
    let name : String
    let director : User
    struct User: Codable {
        let id : String
        let name : String
        let password : String
        
        let books : [Book]
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

        var clubs : [Club]?
        struct Club: Codable {
        }
        var ownedClubs : [Club]?
        var reviews : [Review]
        struct Review: Codable {
            let id: String
            let user: String
            
            let book: Book
            let date: String
            let content: String
        }
    }
    let monthlyHost : User
    let members : [User]?
    let books : [Book]
    let meetingLocation : String
}
