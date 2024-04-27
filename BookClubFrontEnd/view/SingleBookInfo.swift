//
//  OneBook.swift
//  BookClubFrontEnd
//
//  Created by Cole Prochilo on 4/23/24.
//

import SwiftUI

struct SingleBookInfo: View {
    var book: Book
    
    var body: some View {
        //Add navigation View like in home for links to work
        VStack{
            HStack{
                Text(book.volumeInfo.title)
                    .font(.title)
            }
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    ForEach(book.volumeInfo.authors, id: \.self) { author in
                        Text(author)
                    }
                }
            }
            HStack{
                //image goes here
            }
            HStack{
                NavigationLink{
                    //Reviews()
                } label:{
                    Text("Reviews")
                }
            }
            HStack{
                NavigationLink{
                    WriteReview()
                } label:{
                    Text("Add Review")
                }
            }
            HStack{
                Text(book.volumeInfo.description)
            }
            }.padding()
        }
}

#Preview {
    SingleBookInfo(book: ModelData().oneBookTest)
}

