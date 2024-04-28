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
            Text("Review")
                .font(.largeTitle)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            Spacer()
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
                Text("Review Author: \(review.user)")
            }
            HStack {
                // Image goes here
            }
            HStack {
                Text("Content: \(review.content)")
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ReviewView(review: ModelData().oneReviewTest)
}
