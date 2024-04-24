//
//  OneBook.swift
//  BookClubFrontEnd
//
//  Created by Cole Prochilo on 4/23/24.
//

import SwiftUI

struct SingleBookInfo: View {
    var book : Book
    
    var body: some View {
        //Add navigation View like in home for links to work
        VStack{
            HStack{
                Text(book.title)
                    .font(.title)
            }
            HStack{
                Text(book.authors[0])
            }
            HStack{
                //image goes here
            }
            HStack{
                NavigationLink{
                    Reviews()
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
                Text(book.description)
            }
            }.padding()
        }
}

#Preview {
    SingleBookInfo(book: ModelData().twoBooksTest[0])
}

