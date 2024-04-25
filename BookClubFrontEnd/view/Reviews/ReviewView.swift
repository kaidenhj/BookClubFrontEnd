//
//  Review.swift
//  BookClubFrontEnd
//
//  Created by Cole Prochilo on 4/23/24.
//

import SwiftUI

struct ReviewView: View {
    var review: Review
    
    var body: some View {
        VStack {
            HStack {
                Text("\(review.book.volumeInfo.title) Review")
                    .font(.title)
            }
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Book Authors:\n")
                    ForEach(review.book.volumeInfo.authors, id: \.self) { author in
                        Text(author)
                    }
                }
            }
            HStack {
                Text("Review Author: \(review.user.name)")
            }
            HStack {
                // Image goes here
            }
            HStack {
                Text(review.content)
            }
        }.padding()
    }
}

//#Preview {
//    ReviewView()
//}
