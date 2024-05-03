//
//  OneBook.swift
//  BookClubFrontEnd
//
//  Created by Cole Prochilo on 4/23/24.
//

import SwiftUI

struct BookPage: View {
    var book: Book
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text(book.volumeInfo.title)
                        .font(.system(size: 40))
                    
                    HStack {
                        Text("Author(s): ")
                        
                        ForEach(book.volumeInfo.authors, id: \.self) { author in
                            Text(author)
                        }
                    }
                    .font(.system(size: 25))
                    .frame(maxWidth: .infinity, alignment: .top)
                    
                    Image("book")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    
                    NavigationLink(destination: ReviewView(review: ModelData().oneReviewTest)) {
                        Text("Reviews")
                    }
                    .font(.system(size: 25))
                    
                    NavigationLink(destination: WriteReview()) {
                        Text("Add Review")
                    }
                    .font(.system(size: 25))
                    
                    Text("Description: ")
                        .fontWeight(.bold)
                        + Text(book.volumeInfo.description)
                }
                .padding()
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

//struct SingleBookInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        SingleBookInfo(book: ModelData().oneBookTest)
//    }
//}

#Preview{
    BookPage(book: ModelData().oneBookTest)
}

