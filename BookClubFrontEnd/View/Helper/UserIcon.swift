//
//  UserIcon.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/28/24.
//

import SwiftUI

struct UserIcon: View {
    var image : Image
    
    var body: some View {
        
        image
            .clipShape(Capsule())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)}
    }
        //.shadow(radius: 7)
}

#Preview {
    ClubIcon(image: Image("user"))
}
