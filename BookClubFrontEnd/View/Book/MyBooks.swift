//
//  MyBooks.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/28/24.
//

import SwiftUI

struct MyBooks: View {
    var books : [Book]
    var body: some View {
        VStack{
            NavigationSplitView{
                HStack{
                    Text("My Books")
                        .font(.largeTitle)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                }
                Image("book")
                    .resizable()
                    .scaledToFit() .frame(maxWidth: .infinity, maxHeight: 200)
                
                    .padding()
                List{
                    ForEach(books) { book in
                        NavigationLink {
                            BookPage(book: book)
                        } label: {
                            BookRow(book: book)
                        }
                    }
                }
            } detail: {
                Text("Select a book")
            }
        }
    }
}

#Preview {
    MyBooks(books : ModelData().twoBookTest)
}
