//
//  BookRow.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/28/24.
//

import SwiftUI

struct BookRow: View {
    var book : Book
    
    var body: some View {
        HStack{
            Image("book")
                .resizable()
                .scaledToFit() .frame(maxWidth: 70 , maxHeight: 70)
            Text(book.volumeInfo.title)
            Spacer()
        }
    }
}

#Preview {
    BookRow(book: ModelData().oneBookTest)
}
