//
//  Book.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import Foundation

struct Book: Hashable, Codable, Identifiable{
    
    let id: String
    let title: String
    let authors: [String]
    let description: String
    let smallThumbnail: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case volumeInfo
    }
    
    init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                id = try container.decode(String.self, forKey: .id)
                let volumeInfoContainer = try container.nestedContainer(keyedBy: VolumeInfoKeys.self, forKey: .volumeInfo)
                title = try volumeInfoContainer.decode(String.self, forKey: .title)
                authors = try volumeInfoContainer.decode([String].self, forKey: .authors)
                description = try volumeInfoContainer.decode(String.self, forKey: .description)
                let imageLinksContainer = try volumeInfoContainer.nestedContainer(keyedBy: ImageLinksKeys.self, forKey: .imageLinks)
                smallThumbnail = try imageLinksContainer.decode(String.self, forKey: .smallThumbnail)
            }
            
            // Implement encode(to:) for encoding
            func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode(id, forKey: .id)
                var volumeInfoContainer = container.nestedContainer(keyedBy: VolumeInfoKeys.self, forKey: .volumeInfo)
                try volumeInfoContainer.encode(title, forKey: .title)
                try volumeInfoContainer.encode(authors, forKey: .authors)
                try volumeInfoContainer.encode(description, forKey: .description)
                var imageLinksContainer = volumeInfoContainer.nestedContainer(keyedBy: ImageLinksKeys.self, forKey: .imageLinks)
                try imageLinksContainer.encode(smallThumbnail, forKey: .smallThumbnail)
            }

    enum VolumeInfoKeys: String, CodingKey {
        case title
        case authors
        case description
        case imageLinks
    }

    enum ImageLinksKeys: String, CodingKey {
        case smallThumbnail
    }
}
