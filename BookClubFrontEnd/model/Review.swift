//
//  Review.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Review: Codable {
    let id: String
    let user: String
    
    let book: Book
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

    let date: String
    let content: String
}
