//
//  ClubIcon.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/27/24.
//

import SwiftUI

struct ClubIcon: View {
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
    ClubIcon(image: Image("clubPic"))
}
