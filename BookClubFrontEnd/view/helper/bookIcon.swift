//
//  BookIcon.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/23/24.
//

import SwiftUI

struct BookIcon: View {
    var image : Image
    
    var body: some View {
        
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)}
    }
        //.shadow(radius: 7)
}

#Preview {
    BookIcon(image: Image("book"))
}
